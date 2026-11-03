#!/usr/bin/env python3
"""Generate lesson dialogue audio on the Studio PC (Unsloth Studio, Chatterbox GGUF).

Run: python3 tools/tts_studio.py [--force] [--clips=0002-dialogue,...] [lessons/0001-*.html ...]
Needs Studio at STUDIO_URL with Chatterbox loaded and voices "tugao1"/"tugao2" saved
(POST /api/inference/audio/voices). The key comes from ~/.pi/agent/models.json.
Same lesson parsing, chunking and pauses as tts_open.py (torch, Mac). Check with check_audio.py.
"""
import glob, json, os, re, subprocess, sys, tempfile, time, urllib.error, urllib.request, wave

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from check_audio import OUT, ROOT, blocks  # noqa: E402

URL = os.environ.get("STUDIO_URL", "http://desktop-vdsrh2e:8888")
VOICE_NAMES = ("tugao1", "tugao2")
MODEL = "audio-cpp/audio.cpp-gguf/Chatterbox-GGUF"


def key():
    d = json.load(open(os.path.expanduser("~/.pi/agent/models.json")))
    return next(p["apiKey"] for p in d["providers"].values() if "desktop" in p.get("baseUrl", ""))


def call(path, body=None):
    req = urllib.request.Request(URL + path, headers={"Authorization": "Bearer " + key(),
                                                      "content-type": "application/json"},
                                 data=json.dumps(body).encode() if body is not None else None)
    for attempt in range(8):  # Studio sometimes answers 500 on one piece; retry resamples it
        try:
            return urllib.request.urlopen(req, timeout=300).read()
        except urllib.error.HTTPError as e:
            if attempt == 7 or (e.code < 500 and e.code != 400):
                raise
            if e.code == 400 or b"runtime_stopped" in e.read():
                load()  # the TyLog worker reloading ornith evicts Chatterbox: bring it back
            time.sleep(5)


def load():
    body = json.dumps({"model_path": MODEL}).encode()
    req = urllib.request.Request(URL + "/v1/load", data=body, headers={
        "Authorization": "Bearer " + key(), "content-type": "application/json"})
    try:
        urllib.request.urlopen(req, timeout=300).read()
    except urllib.error.HTTPError:
        time.sleep(30)  # ornith busy: Studio refuses until it fits; the caller retries


def chunks(text, limit=150):
    out = []
    for sentence in re.split(r"(?<=[.!?…])\s+", text):
        if out and len(out[-1]) + 1 + len(sentence) <= limit:
            out[-1] += " " + sentence
        else:
            out.append(sentence)
    return out


def speak(text, voice_id, tmp):
    p = os.path.join(tmp, "p.wav")
    open(p, "wb").write(call("/v1/audio/speech", {"input": text, "voice": voice_id,
                                                  "response_format": "wav", "language": "pt"}))
    with wave.open(p) as w:
        return w.getparams(), w.readframes(w.getnframes())


def build(voices, name, lines):
    speakers = []
    for s, _ in lines:
        if s not in speakers:
            speakers.append(s)
    with tempfile.TemporaryDirectory() as tmp:
        parts, params = [], None
        for s, text in lines:
            for piece in chunks(text):
                params, pcm = speak(piece, voices[speakers.index(s) % len(voices)], tmp)
                parts += [pcm, bytes(int(params.framerate * 0.15) * params.sampwidth)]
            parts[-1] = bytes(int(params.framerate * 0.5) * params.sampwidth)
        wav = os.path.join(tmp, "out.wav")
        with wave.open(wav, "wb") as w:
            w.setparams(params)
            w.writeframes(b"".join(parts[:-1]))
        subprocess.run(["ffmpeg", "-y", "-loglevel", "error", "-i", wav, "-c:a", "libmp3lame",
                        "-b:a", "48k", "-ar", "24000", "-ac", "1", os.path.join(OUT, name + ".mp3")],
                       check=True)
    print(name, len(lines), "lines", flush=True)


def main(args):
    force = "--force" in args
    only = next((a.split("=", 1)[1].split(",") for a in args if a.startswith("--clips=")), None)
    args = [a for a in args if a != "--force" and not a.startswith("--clips=")]
    paths = args or sorted(glob.glob(os.path.join(ROOT, "lessons", "*.html")))
    saved = {v["name"]: v["id"] for v in json.loads(call("/v1/audio/voices"))["voices"]}
    voices = [saved[n] for n in VOICE_NAMES]
    os.makedirs(OUT, exist_ok=True)
    for p in paths:
        for attrs, lines in blocks(p):
            out = os.path.join(OUT, attrs["data-audio"] + ".mp3")
            if only and attrs["data-audio"] not in only:
                continue
            if not lines or (only is None and not force and os.path.exists(out) and os.path.getmtime(out) > os.path.getmtime(p)):
                continue
            build(voices, attrs["data-audio"], lines)


if __name__ == "__main__":
    assert chunks("Olá. Bom dia!", 8) == ["Olá.", "Bom dia!"]
    main(sys.argv[1:])
