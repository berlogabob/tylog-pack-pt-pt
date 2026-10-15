#!/usr/bin/env python3
"""lessons/*.html -> dist/pt-pt-a2b1.tylogpack (TyLog Module Pack, data-only).

Same HTML source of truth as typ.py, but emits plain tylog-format notes with no
layout macros (the in-app Typst compile has only tylog.typ, no course.typ).
Each lesson note also carries one #tylog.task whose due date is a
`{{due:N}}` token the app resolves from the user's chosen start date.

Run: python3 tools/pack.py          (validates with: dart ... / see docs/modules)
"""
import glob, hashlib, json, os, re, sys, zipfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from typ import ANSWER_RE, N, Tree, esc, safe_start, sesc  # noqa: E402

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PACK_ID = "pt-pt-a2b1"
VERSION = "1.1.0"
PROJECT = "Português"
LESSONS_PER_WEEK = 6  # day 7 of each week is rest


def offset_days(n):
    """Lesson n (1-based) -> days after the start date; every 7th day is rest."""
    return ((n - 1) // LESSONS_PER_WEEK) * 7 + (n - 1) % LESSONS_PER_WEEK


def inline(node):
    out = []
    for k in node.kids:
        if isinstance(k, str):
            out.append(esc(k)); continue
        t = k.tag
        if t in ("strong", "b"): out.append("#strong[" + inline(k).strip() + "]")
        elif t in ("em", "i"): out.append("#emph[" + inline(k).strip() + "]")
        elif t == "span":
            if "time" in k.cls(): out.append(" #emph[(%s)]" % esc(k.text().strip()))
            else: out.append(inline(k))
        elif t == "a": out.append('#link("%s")[%s]' % (sesc(k.attrs.get("href", "")), inline(k).strip()))
        elif t == "code": out.append('#raw("%s")' % sesc(k.text()))
        elif t == "br": out.append(" \\\n")
        elif t in ("ol", "ul", "p", "div", "table", "details", "pre", "audio"): out.append("\n" + block(k) + "\n")
        else: out.append(inline(k))
    return "".join(out)


def block(k):
    return Conv().node(k)


def items(lst, marker):
    return "\n".join(
        marker + " " + inline(li).strip().replace("\n", "\n  ")
        for li in lst.kids if isinstance(li, N) and li.tag == "li")


def table(t):
    rows = []
    for part in t.kids:
        if not isinstance(part, N): continue
        for tr in ([part] if part.tag == "tr" else part.kids):
            if isinstance(tr, N) and tr.tag == "tr":
                cells = [c for c in tr.kids if isinstance(c, N) and c.tag in ("td", "th")]
                rows.append((part.tag == "thead" or all(c.tag == "th" for c in cells), cells))
    ncol = max(len(c) for _, c in rows)
    out = ["#table(columns: %d," % ncol]
    for head, cells in rows:
        cs = ["[" + safe_start(inline(c).strip()) + "]" for c in cells] + ["[]"] * (ncol - len(cells))
        out.append(("  table.header(%s)," if head else "  %s,") % ", ".join(cs))
    out.append(")")
    return "\n".join(out)


def titled(title, body):
    return "#strong[%s]\n\n%s" % (title, body) if title else body


class Conv:
    def __init__(s): s.answers = []

    def children(s, n, skip=None):
        return "\n\n".join(x for x in (s.node(k) for k in n.kids if not (isinstance(k, N) and k.tag == skip)) if x.strip())

    def details(s, d, top):
        summ = d.find("summary"); title = inline(summ).strip() if summ else ""
        raw_title = summ.text().strip() if summ else ""
        body = []
        for k in d.kids:
            if isinstance(k, N) and k.tag == "summary": continue
            if isinstance(k, N) and k.tag == "details":
                ks = k.find("summary"); kt = ks.text().strip() if ks else ""
                if ANSWER_RE.search(kt): s.answers.append((raw_title, s.children(k, skip="summary")))
                else: body.append(s.details(k, False))
            else: body.append(s.node(k))
        content = "\n\n".join(b for b in body if b.strip())
        if top and ANSWER_RE.search(raw_title):
            s.answers.append((raw_title, content)); return ""
        return titled(title, content)

    def node(s, k):
        if isinstance(k, str):
            t = esc(k).strip(); return safe_start(t) if t else ""
        t = k.tag; c = k.cls()
        if t in ("h2", "h3"): return ("== " if t == "h2" else "=== ") + inline(k).strip()
        if t == "p":
            b = inline(k).strip(); return safe_start(b) if b else ""
        if t == "ol": return items(k, "+")
        if t == "ul": return items(k, "-")
        if t == "audio":
            src = k.find("source"); m = re.search(r"audio/([^\"']+)\.mp3", src.attrs.get("src", "")) if src else None
            return ('#tylog.attachment("assets/modules/{{id}}/audio/%s.mp3", kind: "audio")[Audio: %s]' % (m.group(1), esc(m.group(1)))) if m else ""
        if t == "div" and "dialogue" in c:
            lines = []
            for p in k.kids:
                if isinstance(p, N) and p.tag == "p":
                    st = p.find("strong"); sp = st.text().strip().rstrip(":") if st else ""
                    txt = "".join(x if isinstance(x, str) else ("" if x is st else x.text()) for x in p.kids).strip()
                    txt = esc(re.sub(r"\s+", " ", txt))
                    if txt: lines.append(("#strong[%s:] %s" % (esc(sp), txt)) if sp else txt)
            return "\n\n".join(lines)
        if t == "div" and "card" in c:
            h = k.find("h3")
            body = "\n\n".join(x for x in (s.node(x) for x in k.kids if x is not h) if x.strip())
            return titled(inline(h).strip() if h else None, body)
        if t == "div": return s.children(k)
        if t == "table": return table(k)
        if t == "details": return s.details(k, True)
        if t == "pre": return '#raw(block: true, "%s")' % sesc(k.text().strip("\n"))
        if t in ("nav", "footer", "script", "style", "summary"): return ""
        if t == "section": return s.section(k)
        if t in ("strong", "em", "span", "a", "code", "b", "i", "br"):
            w = N("w", []); w.kids = [k]; return inline(w).strip()
        return s.children(k)

    def section(s, sec):
        h2 = sec.find("h2"); sid = h2.attrs.get("id", "") if h2 else ""
        head = ("== " + inline(h2).strip() + "\n\n") if h2 else ""
        if sid == "sources":
            body = "\n".join(x for x in (s.node(x) for x in sec.kids if x is not h2) if x.strip())
            return "#emph[Источники:] " + re.sub(r"^- ", "", body, flags=re.M).replace("\n", " · ")
        body = "\n\n".join(x for x in (s.node(x) for x in sec.kids if x is not h2) if x.strip())
        return head + body


def convert(path):
    p = Tree(); p.feed(open(path, encoding="utf-8").read()); root = p.root
    body_el = root.find("html").find("body") if root.find("html") else root
    hdr = body_el.find("header"); main = body_el.find("main")
    m = re.search(r"Semana (\d+) · Dia (\d+) · Урок (\d+)", hdr.find("p", "muted").text())
    week, day, n = map(int, m.groups())
    title = hdr.find("h1").text().strip()
    lead_el = hdr.find("p", "lead")
    cv = Conv()
    parts = [x for x in (cv.node(sec) for sec in main.kids if isinstance(sec, N)) if x.strip()]
    if cv.answers:
        parts.append("== Ответы\n\n" + "\n\n".join(titled(esc(t), c) for t, c in cv.answers))
    full = "Урок %d — %s" % (n, title)
    head = [
        '#import "/_system/tylog.typ" as tylog',
        '#show: tylog.note.with(id: "%s-%04d", title: "%s", kind: "note", project: "%s", '
        'tags: ("português", "module-%s"), properties: ("lesson": "%d", "week": "%d", "day": "%d"))'
        % (PACK_ID, n, sesc(full), PROJECT, PACK_ID, n, week, day),
        "",
        '#tylog.task(id: "%s-%04d-task", text: "%s", due: "{{due:%d}}", project: "%s")'
        % (PACK_ID, n, sesc(full), offset_days(n), PROJECT),
        "",
    ]
    if lead_el: head += [inline(lead_el).strip(), ""]
    return n, "\n".join(head) + "\n" + "\n\n".join(parts) + "\n"


def peaks_hex(mp3, buckets=200):
    """200 loudness buckets (0-255, hex pairs) like a Reaper .reapeaks sidecar."""
    import array, subprocess
    raw = subprocess.run(["ffmpeg", "-v", "error", "-i", mp3, "-ac", "1", "-ar", "8000", "-f", "s16le", "-"],
                         capture_output=True, check=True).stdout
    pcm = array.array("h"); pcm.frombytes(raw[: len(raw) // 2 * 2])
    n = min(buckets, len(pcm))
    if n == 0: return ""
    bars = [0] * n
    for i, v in enumerate(pcm):
        b = i * n // len(pcm); v = abs(v)
        if v > bars[b]: bars[b] = v
    top = max(bars) or 1
    return "".join("%02x" % round(v * 255 / top) for v in bars)


def main():
    files = {}
    for path in sorted(glob.glob(os.path.join(ROOT, "lessons", "*.html"))):
        n, text = convert(path)
        files["notes/%04d.typ" % n] = text.encode("utf-8")
    audio = os.path.join(ROOT, "assets", "audio")
    for f in sorted(os.listdir(audio)):
        if f.endswith(".mp3"):
            files["assets/audio/" + f] = open(os.path.join(audio, f), "rb").read()
            files["assets/audio/" + f + ".peaks"] = peaks_hex(os.path.join(audio, f)).encode("ascii")
    manifest = {
        "schema": 1, "id": PACK_ID, "name": "Português Europeu A2 → B1", "version": VERSION, "lang": "ru", "unit": "lessons",
        "files": [{"path": p, "sha256": hashlib.sha256(b).hexdigest()} for p, b in files.items()],
    }
    os.makedirs(os.path.join(ROOT, "dist"), exist_ok=True)
    out = os.path.join(ROOT, "dist", PACK_ID + ".tylogpack")
    with zipfile.ZipFile(out, "w", zipfile.ZIP_STORED) as z:  # mp3 is already compressed
        z.writestr("manifest.json", json.dumps(manifest, ensure_ascii=False, indent=1))
        for p, b in files.items(): z.writestr(p, b)
    print("wrote", out, len(files), "files,", round(os.path.getsize(out) / 1e6, 1), "MB")


if __name__ == "__main__":
    main()
