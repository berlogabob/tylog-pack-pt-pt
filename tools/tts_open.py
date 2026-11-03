#!/usr/bin/env python3
"""Generate lesson dialogue audio with open models only.

Run: uv run --python 3.11 --with chatterbox-tts --with "setuptools<81" tools/tts_open.py [--force] [lessons/0001-*.html ...]

Model: Chatterbox Multilingual (Resemble AI, MIT), language "pt".
Voices: cloned from assets/voices/*.wav, 12 s cut from the CC0 European
Portuguese "tugão" recordings (OHF-Voice/voice-datasets, pt_PT); voice 2 is
the same clip shifted up in pitch. Chatterbox embeds an inaudible PerthNet
watermark marking the audio as generated.
Check the result with tools/check_audio.py.
"""
import glob, os, re, subprocess, sys, tempfile

import torch
import torchaudio

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from check_audio import OUT, ROOT, blocks  # noqa: E402  same lesson parsing

VOICES = [os.path.join(ROOT, "assets", "voices", f)
          for f in ("voice1-tugao.wav", "voice2-tugao-high.wav")]


def chunks(text, limit=150):
    """Sentences joined up to `limit` chars: Chatterbox's memory grows with
    line length and a 212-char line got the process killed on a 16 GB Mac."""
    out = []
    for sentence in re.split(r"(?<=[.!?…])\s+", text):
        if out and len(out[-1]) + 1 + len(sentence) <= limit:
            out[-1] += " " + sentence
        else:
            out.append(sentence)
    return out


def build(model, name, lines):
    speakers = []
    for s, _ in lines:
        if s not in speakers:
            speakers.append(s)
    pause = torch.zeros(1, int(model.sr * 0.5))
    gap = torch.zeros(1, int(model.sr * 0.15))  # between sentences of one line
    parts = []
    for s, text in lines:
        voice = VOICES[speakers.index(s) % len(VOICES)]
        for piece in chunks(text):
            parts += [model.generate(piece, language_id="pt", audio_prompt_path=voice), gap]
        parts[-1] = pause
    with tempfile.TemporaryDirectory() as tmp:
        wav = os.path.join(tmp, "out.wav")
        torchaudio.save(wav, torch.cat(parts[:-1], dim=1), model.sr)
        subprocess.run(["ffmpeg", "-y", "-loglevel", "error", "-i", wav, "-c:a", "libmp3lame",
                        "-b:a", "48k", "-ar", "24000", "-ac", "1", os.path.join(OUT, name + ".mp3")],
                       check=True)
    if torch.backends.mps.is_available():
        torch.mps.empty_cache()  # release GPU memory between clips
    print(name, len(lines), "lines", flush=True)


def main(args):
    force = "--force" in args
    paths = [a for a in args if a != "--force"] or sorted(
        glob.glob(os.path.join(ROOT, "lessons", "*.html")))
    from chatterbox.mtl_tts import ChatterboxMultilingualTTS
    device = "mps" if torch.backends.mps.is_available() else (
        "cuda" if torch.cuda.is_available() else "cpu")
    model = ChatterboxMultilingualTTS.from_pretrained(device=device)
    os.makedirs(OUT, exist_ok=True)
    for p in paths:
        for attrs, lines in blocks(p):
            out = os.path.join(OUT, attrs["data-audio"] + ".mp3")
            if not lines:
                continue
            if not force and os.path.exists(out) and os.path.getmtime(out) > os.path.getmtime(p):
                continue
            build(model, attrs["data-audio"], lines)


if __name__ == "__main__":
    assert chunks("Olá. Bom dia!", 8) == ["Olá.", "Bom dia!"]
    main(sys.argv[1:])
