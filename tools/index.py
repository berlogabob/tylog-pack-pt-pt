#!/usr/bin/env python3
"""Build index.html from lessons/*.html and report broken links / missing audio.
Run: python3 tools/index.py"""
import glob, html, os, re, sys
from html.parser import HTMLParser

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
WEEKS = ["Перезапуск с нуля", "Предметы и люди", "Настоящее и повседневность", "Место, движение и первая диагностика",
         "Завершённое прошлое", "История и описание", "Объекты, просьбы и помощь", "Контроль B: полный A2",
         "Мост B1: мнение", "Аутентичная речь", "Рабочая интеракция", "Контроль C"]
errors = []
rows = {}
for p in sorted(glob.glob(os.path.join(ROOT, "lessons", "*.html"))):
    f = os.path.basename(p)
    n = int(f[:4])
    s = open(p, encoding="utf-8").read()
    try:
        HTMLParser().feed(s)
    except Exception as e:
        errors.append(f"{f}: parse error {e}")
    title = re.search(r"<h1>(.*?)</h1>", s, re.S)
    lead = re.search(r'<p class="lead">(.*?)</p>', s, re.S)
    strip = lambda m: re.sub(r"<[^>]+>", "", m.group(1)).strip() if m else ""
    rows[n] = (f, strip(title) or f, strip(lead))
    for href in re.findall(r'href="([^"#]+)"', s):
        if href.startswith("http"): continue
        if not os.path.exists(os.path.join(ROOT, "lessons", href)):
            errors.append(f"{f}: broken link {href}")
    for src in re.findall(r'src="\.\./assets/audio/([^"]+)"', s):
        if not os.path.exists(os.path.join(ROOT, "assets", "audio", src)):
            errors.append(f"{f}: missing audio {src}")
    ids = re.findall(r'data-audio="([^"]+)"', s)
    for i in ids:
        if f'assets/audio/{i}.mp3' not in s:
            errors.append(f"{f}: data-audio {i} has no <audio> element")
    if not ids and n % 6 != 0 and n not in (43, 44, 45, 48, 70):
        errors.append(f"{f}: no audio block")
    if 'class="pager"' not in s:
        errors.append(f"{f}: no pager")
for n in range(1, 73):
    if n not in rows: errors.append(f"missing lesson {n:04d}")

out = ['<!doctype html><html lang="ru"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">',
       '<title>Português Europeu A2 → B1 — оглавление</title><link rel="stylesheet" href="assets/course.css"></head><body>',
       '<header><p class="muted">Português Europeu · 12 недель · 3 × 30 минут · 6 дней в неделю</p><h1>Оглавление курса</h1>',
       '<p class="lead">Один урок в день, шестой день — контроль. Правила режима: <a href="PLAN.md">PLAN.md</a>; цель: <a href="MISSION.md">MISSION.md</a>; ресурсы: <a href="RESOURCES.md">RESOURCES.md</a>.</p></header><main>']
for w in range(12):
    out.append(f'<section id="semana-{w+1}"><h2>Неделя {w+1} — {WEEKS[w]}</h2><ol class="checklist">')
    for d in range(6):
        n = w * 6 + d + 1
        if n in rows:
            f, t, l = rows[n]
            out.append(f'<li><a href="lessons/{f}">Урок {n} · {html.escape(t)}</a>' + (f' <span class="muted">— {html.escape(l)}</span>' if l else '') + '</li>')
    out.append('</ol></section>')
out.append('</main><footer><p class="muted">PDF-версия: <a href="pdf/book.pdf">pdf/book.pdf</a> (вся книга), <a href="pdf/">pdf/week-NN.pdf</a> и <a href="pdf/">pdf/NNNN.pdf</a> по урокам — сборка <code>bash tools/build.sh</code>. Аудио: <code>uv run --with edge-tts tools/tts.py</code>. Оглавление: <code>python3 tools/index.py</code>.</p></footer></body></html>')
open(os.path.join(ROOT, "index.html"), "w", encoding="utf-8").write("\n".join(out))
print(f"{len(rows)} lessons indexed")
print("\n".join(errors) or "OK: no errors")
sys.exit(1 if errors else 0)
