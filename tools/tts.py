#!/usr/bin/env python3
"""Generate lesson audio from <div class="dialogue" data-audio="..."> blocks.
Run: uv run --with edge-tts tools/tts.py [lessons/0001-*.html ...]
"""
import asyncio, glob, html, os, re, subprocess, sys, tempfile
import edge_tts

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "assets", "audio")
VOICES = {"Raquel": "pt-PT-RaquelNeural", "Duarte": "pt-PT-DuarteNeural"}
DEFAULT = ["Raquel", "Duarte"]
BLOCK = re.compile(r'<div class="card dialogue"([^>]*)>(.*?)</div>', re.S)
ATTR = re.compile(r'([\w-]+)="([^"]*)"')
LINE = re.compile(r'<p>\s*(?:<strong>([^<]*?):</strong>)?\s*(.*?)</p>', re.S)
TAG = re.compile(r'<[^>]+>')

def blocks(path):
    for m in BLOCK.finditer(open(path, encoding="utf-8").read()):
        a = dict(ATTR.findall(m.group(1)))
        if "data-audio" not in a:
            continue
        lines = [(s or "", html.unescape(TAG.sub("", t)).strip()) for s, t in LINE.findall(m.group(2))]
        yield a, [(s, t) for s, t in lines if t]

async def synth(text, voice, rate, out):
    await edge_tts.Communicate(text, voice, rate=rate).save(out)

async def build(name, attrs, lines, silence):
    voices = attrs.get("data-voices", ",".join(DEFAULT)).split(",")
    rate = attrs.get("data-rate", "+0%")
    speakers = []
    for s, _ in lines:
        if s not in speakers:
            speakers.append(s)
    vmap = {s: VOICES[voices[i % len(voices)].strip()] for i, s in enumerate(speakers)}
    with tempfile.TemporaryDirectory() as d:
        parts = []
        for i, (s, t) in enumerate(lines):
            f = os.path.join(d, f"{i:03d}.mp3")
            await synth(t, vmap[s], rate, f)
            parts.append(f)
        lst = os.path.join(d, "list.txt")
        with open(lst, "w") as fh:
            for i, p in enumerate(parts):
                if i:
                    fh.write(f"file '{silence}'\n")
                fh.write(f"file '{p}'\n")
        subprocess.run(["ffmpeg", "-y", "-loglevel", "error", "-f", "concat", "-safe", "0", "-i", lst,
                        "-c:a", "libmp3lame", "-b:a", "48k", "-ar", "24000", "-ac", "1", os.path.join(OUT, name + ".mp3")], check=True)
    print(name, len(lines), "lines")

async def main(paths):
    os.makedirs(OUT, exist_ok=True)
    silence = os.path.join(OUT, ".silence.mp3")
    if not os.path.exists(silence):
        subprocess.run(["ffmpeg", "-y", "-loglevel", "error", "-f", "lavfi", "-i", "anullsrc=r=24000:cl=mono",
                        "-t", "0.5", "-b:a", "48k", silence], check=True)
    jobs = []
    for p in paths:
        for attrs, lines in blocks(p):
            name = attrs["data-audio"]
            out = os.path.join(OUT, name + ".mp3")
            if not lines:
                print("SKIP empty", name); continue
            if os.path.exists(out) and os.path.getmtime(out) > os.path.getmtime(p):
                continue
            jobs.append(build(name, attrs, lines, silence))
    sem = asyncio.Semaphore(4)  # ponytail: throttle so MS TTS doesn't rate-limit
    async def run(j):
        async with sem:
            await j
    await asyncio.gather(*(run(j) for j in jobs))

if __name__ == "__main__":
    args = sys.argv[1:] or sorted(glob.glob(os.path.join(ROOT, "lessons", "*.html")))
    asyncio.run(main(args))
