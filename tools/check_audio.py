#!/usr/bin/env python3
"""Transcribe each dialogue mp3 with Whisper (Portuguese) and compare it with
the lesson text, so audio quality can be checked without a Portuguese ear.
Run: STUDIO_URL=http://desktop-vdsrh2e:8888 python3 tools/check_audio.py  (Studio STT), or uv run --with faster-whisper --with av==17.0.1 tools/check_audio.py [lessons/0001-*.html ...]
Prints word accuracy per clip; exits 1 if any clip is below --min (default 0.9).
"""
import difflib, glob, html, os, re, sys, unicodedata

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "assets", "audio")
BLOCK = re.compile(r'<div class="card dialogue"([^>]*)>(.*?)</div>', re.S)
ATTR = re.compile(r'([\w-]+)="([^"]*)"')
LINE = re.compile(r'<p>\s*(?:<strong>([^<]*?):</strong>)?\s*(.*?)</p>', re.S)
TAG = re.compile(r'<[^>]+>')


def blocks(path):
    """Dialogue blocks as (attrs, [(speaker, text)]); shared with tts_open.py."""
    for m in BLOCK.finditer(open(path, encoding="utf-8").read()):
        a = dict(ATTR.findall(m.group(1)))
        if "data-audio" not in a:
            continue
        lines = [(s or "", html.unescape(TAG.sub("", t)).strip())
                 for s, t in LINE.findall(m.group(2))]
        yield a, [(s, t) for s, t in lines if t]


def words(text):
    text = unicodedata.normalize("NFC", text.lower())
    return re.findall(r"[\w']+", text)


def accuracy(expected, heard):
    a, b = words(expected), words(heard)
    return difflib.SequenceMatcher(None, a, b).ratio() if a else 1.0


def main(args):
    minimum = 0.9
    if "--min" in args:
        i = args.index("--min")
        minimum = float(args[i + 1])
        del args[i:i + 2]
    paths = args or sorted(glob.glob(os.path.join(ROOT, "lessons", "*.html")))
    studio = os.environ.get("STUDIO_URL")  # score on the Studio PC (large-v3-turbo) instead of local CPU
    if studio:
        import json, urllib.request
        key = next(p["apiKey"] for p in json.load(open(os.path.expanduser("~/.pi/agent/models.json")))
                   ["providers"].values() if "desktop" in p.get("baseUrl", ""))

        def transcribe(mp3):
            req = urllib.request.Request(studio + "/api/inference/audio/transcribe/raw?language=pt&model=large-v3-turbo",
                                         data=open(mp3, "rb").read(),
                                         headers={"Authorization": "Bearer " + key, "content-type": "audio/mpeg"})
            return json.load(urllib.request.urlopen(req, timeout=300))["text"]
    else:
        from faster_whisper import WhisperModel
        model = WhisperModel("medium")  # small misheard clean pt-PT speech

        def transcribe(mp3):
            return " ".join(s.text for s in model.transcribe(mp3, language="pt")[0])
    bad = 0
    for p in paths:
        for attrs, lines in blocks(p):
            mp3 = os.path.join(OUT, attrs["data-audio"] + ".mp3")
            if not lines or not os.path.exists(mp3):
                continue
            heard = transcribe(mp3)
            score = accuracy(" ".join(t for _, t in lines), heard)
            flag = "" if score >= minimum else "  <-- check"
            bad += score < minimum
            print(f"{attrs['data-audio']:28} {score:.2f}{flag}")
    sys.exit(1 if bad else 0)


if __name__ == "__main__":
    assert accuracy("Olá, bom dia!", "olá bom dia") == 1.0
    main(sys.argv[1:])
