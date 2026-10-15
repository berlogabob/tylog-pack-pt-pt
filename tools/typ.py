#!/usr/bin/env python3
"""lessons/NNNN-*.html -> typst/lessons/NNNN.typ (+ book.typ, week-W.typ).
HTML is the source of truth; never hand-edit the .typ output.
Run: python3 tools/typ.py [lessons/0001-*.html ...]"""
import glob, html, os, re, sys
from html.parser import HTMLParser

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "typst", "lessons")
ANSWER_RE = re.compile(r"ответ|решени|опора|подсказ|модел|образец|transcri|ключ|вариант|пример ответа", re.I)
WEEKS = ["Перезапуск с нуля", "Предметы и люди", "Настоящее и повседневность", "Место, движение и первая диагностика",
         "Завершённое прошлое", "История и описание", "Объекты, просьбы и помощь", "Контроль B: полный A2",
         "Мост B1: мнение", "Аутентичная речь", "Рабочая интеракция", "Контроль C"]
VOID = {"br", "source", "meta", "link", "img", "hr", "input"}
unknown = set()

class N:
    def __init__(s, tag, attrs): s.tag, s.attrs, s.kids = tag, dict(attrs), []
    def cls(s): return s.attrs.get("class", "").split()
    def find(s, tag=None, cls=None):
        for k in s.kids:
            if isinstance(k, N) and (tag is None or k.tag == tag) and (cls is None or cls in k.cls()): return k
    def text(s):
        return "".join(k if isinstance(k, str) else k.text() for k in s.kids)

class Tree(HTMLParser):
    def __init__(s):
        super().__init__(convert_charrefs=True); s.root = N("root", []); s.stack = [s.root]
    def handle_starttag(s, tag, attrs):
        n = N(tag, attrs); s.stack[-1].kids.append(n)
        if tag not in VOID: s.stack.append(n)
    def handle_endtag(s, tag):
        for i in range(len(s.stack) - 1, 0, -1):
            if s.stack[i].tag == tag: del s.stack[i:]; return
    def handle_data(s, d): s.stack[-1].kids.append(d)

def esc(t):
    t = re.sub(r"\s+", " ", t)
    return re.sub(r"([\\#*_@<>$`\[\]~])", r"\\\1", t)

def sesc(t):  # typst string literal body
    return t.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n")

def safe_start(m):  # avoid "1. " / "- " / "+ " / "/ " / "= " being parsed as markup at line start
    return "#h(0pt)" + m if re.match(r"\s*(\d+\.|[-+/=])\s", m) else m

def inline(node):
    """Inline markup for the children of node."""
    out = []
    for k in node.kids:
        if isinstance(k, str): out.append(esc(k)); continue
        t = k.tag
        if t == "strong" or t == "b": out.append("#strong[" + inline(k).strip() + "]")  # not *x*: fails intra-word (ca*sa*)
        elif t == "em" or t == "i": out.append("#emph[" + inline(k).strip() + "]")
        elif t == "span":
            if "time" in k.cls(): out.append(' #pill("%s")' % sesc(k.text().strip()))
            elif k.attrs.get("lang") == "pt": out.append("#pt[" + inline(k).strip() + "]")
            else: out.append(inline(k))
        elif t == "a": out.append('#link("%s")[%s]' % (sesc(k.attrs.get("href", "")), inline(k).strip()))
        elif t == "code": out.append("#raw(\"%s\")" % sesc(k.text()))
        elif t == "br": out.append(" \\\n")
        elif t in ("ol", "ul", "p", "div", "table", "details", "pre", "audio"): out.append("\n" + block(k) + "\n")
        else:
            unknown.add(t); out.append(inline(k))
    return "".join(out)

def items(lst, marker):
    out = []
    for li in lst.kids:
        if isinstance(li, N) and li.tag == "li":
            body = inline(li).strip()
            body = body.replace("\n", "\n  ")
            out.append(marker + " " + body)
    return "\n".join(out)

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

class Conv:
    def __init__(s): s.answers = []; s.goal = None; s.recall = None

    def details(s, d, top):
        summ = d.find("summary"); title = inline(summ).strip() if summ else ""
        raw_title = summ.text().strip() if summ else ""
        body = []
        for k in d.kids:
            if isinstance(k, N) and k.tag == "summary": continue
            if isinstance(k, N) and k.tag == "details":
                ks = k.find("summary"); kt = ks.text().strip() if ks else ""
                if ANSWER_RE.search(kt):
                    s.answers.append((raw_title, s.children(k, skip="summary")))
                else: body.append(s.details(k, False))
            else: body.append(s.node(k))
        content = "\n".join(b for b in body if b.strip())
        if top and ANSWER_RE.search(raw_title):
            s.answers.append((raw_title, content)); return ""
        return '#exercise([%s], [\n%s\n])' % (title, content)

    def children(s, n, skip=None):
        return "\n".join(x for x in (s.node(k) for k in n.kids if not (isinstance(k, N) and k.tag == skip)) if x.strip())

    def node(s, k):
        if isinstance(k, str): t = esc(k).strip(); return safe_start(t) if t else ""
        t = k.tag; c = k.cls()
        if t in ("h2", "h3"):
            return ("== " if t == "h2" else "=== ") + inline(k).strip()
        if t == "p":
            b = inline(k).strip()
            return safe_start(b) + "\n" if b else ""
        if t == "ol": return items(k, "+")
        if t == "ul":
            return items(k, "-")
        if t == "audio":
            src = k.find("source"); m = re.search(r"audio/([^\"']+)\.mp3", src.attrs.get("src", "")) if src else None
            return '#audio-ref("%s")' % m.group(1) if m else ""
        if t == "div" and "dialogue" in c:
            lines = []
            for p in k.kids:
                if isinstance(p, N) and p.tag == "p":
                    st = p.find("strong"); sp = st.text().strip().rstrip(":") if st else ""
                    txt = "".join(x if isinstance(x, str) else ("" if x is st else x.text()) for x in p.kids).strip()
                    if txt: lines.append('("%s", "%s")' % (sesc(sp), sesc(re.sub(r"\s+", " ", txt))))
            return "#dialogue((\n  " + ",\n  ".join(lines) + ",\n))"
        if t == "div" and "card" in c:
            h = k.find("h3"); title = ('[%s]' % inline(h).strip()) if h else "none"
            body = "\n".join(x for x in (s.node(x) for x in k.kids if x is not h) if x.strip())
            return "#card(%s, [\n%s\n])" % (title, body)
        if t == "div": return s.children(k)
        if t == "table": return table(k)
        if t == "details": return s.details(k, True)
        if t == "pre": return '#sheet("%s")' % sesc(k.text().strip("\n"))
        if t in ("nav", "footer", "script", "style", "summary"): return ""
        if t == "section": return s.section(k)
        if t in ("strong", "em", "span", "a", "code", "b", "i", "br"): return inline(N("x", [])) if False else safe_start(inline(N("w", [])) ) if False else s.node_inline(k)
        unknown.add(t); return s.children(k)

    def node_inline(s, k):
        w = N("w", []); w.kids = [k]; return inline(w).strip()

    def section(s, sec):
        h2 = sec.find("h2"); sid = h2.attrs.get("id", "") if h2 else ""
        if sid == "goal":
            ul = sec.find("ul", "checklist")
            its = ", ".join('[%s]' % inline(li).strip() for li in (ul.kids if ul else []) if isinstance(li, N) and li.tag == "li")
            extra = "\n".join(x for x in (s.node(x) for x in sec.kids if x is not h2 and x is not ul) if x.strip())
            s.goal = "#checklist((%s,))" % its if not extra else "#card(\"Результат урока\", [\n#checklist-items((%s,))\n%s\n])" % (its, extra)
            return ""
        if sid in ("recall", "tomorrow"):
            title = inline(h2).strip()
            body = "\n".join(x for x in (s.node(x) for x in sec.kids if x is not h2) if x.strip())
            card = "card([%s], [\n%s\n], breakable: true)" % (title, body)
            if sid == "recall": s.recall = card; return ""
            if s.recall: r, s.recall = s.recall, None; return "#duo(%s, %s)" % (r, card)
            return "#" + card
        if sid == "sources":
            body = "\n".join(x for x in (s.node(x) for x in sec.kids if x is not h2) if x.strip())
            return "#block(above: 1em)[#set text(size: 7.6pt, fill: muted)\n*Источники:* " + re.sub(r"^- ", "", body, flags=re.M).replace("\n", " · ") + "]"
        out = []
        for k in sec.kids:
            x = s.node(k)
            if not x.strip(): continue
            if s.goal and x.startswith("#dialogue(") and x.count("\n") <= 12:
                # ponytail: pair the goal card with the first short dialogue; else goal goes full width
                prev = out.pop() if out and out[-1].startswith("#audio-ref(") else ""
                out.append("#duo(%s, [%s\n%s])" % (s.goal.lstrip("#"), prev, x)); s.goal = None; continue
            if s.goal and (x.startswith("#dialogue(") or x.startswith("#card(")):
                prev = out.pop() if out and out[-1].startswith("#audio-ref(") else None
                out.append(s.goal); s.goal = None
                if prev: out.append(prev)
            out.append(x)
        return "\n\n".join(out)

def convert(path):
    src = open(path, encoding="utf-8").read()
    p = Tree(); p.feed(src); root = p.root
    body_el = root.find("html").find("body") if root.find("html") else root
    hdr = body_el.find("header"); main = body_el.find("main")
    muted = hdr.find("p", "muted").text(); m = re.search(r"Semana (\d+) · Dia (\d+) · Урок (\d+)", muted)
    week, day, n = map(int, m.groups())
    title = inline(hdr.find("h1")).strip(); lead_el = hdr.find("p", "lead"); lead = inline(lead_el).strip() if lead_el else None
    cv = Conv(); parts = []
    for sec in main.kids:
        if isinstance(sec, N):
            x = cv.node(sec)
            if x.strip(): parts.append(x)
    if cv.goal: parts.insert(0, cv.goal)
    if cv.recall: parts.append("#" + cv.recall)
    ans = "#answers((\n%s\n))" % "".join("  ([%s], [\n%s\n]),\n" % (esc(t), c) for t, c in cv.answers)
    out = ['#import "../course.typ": *',
           '#show: lesson.with((n: %d, week: %d, day: %d, title: [%s], lead: %s))' % (n, week, day, title, ("[%s]" % lead) if lead else "none"),
           "", "\n\n".join(parts), "", ans, ""]
    os.makedirs(OUT, exist_ok=True)
    fn = os.path.join(OUT, "%04d.typ" % n)
    open(fn, "w", encoding="utf-8").write("\n".join(out))
    return n, week, title

def write_books(meta):
    tdir = os.path.join(ROOT, "typst")
    def head(title):
        return ['#import "course.typ": *', '#set document(title: "%s")' % sesc(title),
                '#set text(font: body-font, size: body-size, lang: "ru")',
                '#set page(paper: "a4", margin: (top: 14mm, bottom: 12mm, x: 12mm))',
                '#text(size: 20pt, weight: 700)[%s]' % title, '#v(0.6em)',
                '#show outline.entry: set text(size: 8.5pt)', '#outline(title: none, depth: 1)']
    by_week = {}
    for n, w, t in sorted(meta): by_week.setdefault(w, []).append(n)
    book = head("Português Europeu A2 → B1 — 12 недель")
    for w in sorted(by_week):
        wk = head("Semana %d — %s" % (w, WEEKS[w - 1]))
        for n in by_week[w]:
            inc = '#pagebreak(weak: true)\n#include "lessons/%04d.typ"' % n
            book.append(inc); wk.append(inc)
        open(os.path.join(tdir, "week-%02d.typ" % w), "w", encoding="utf-8").write("\n".join(wk) + "\n")
    open(os.path.join(tdir, "book.typ"), "w", encoding="utf-8").write("\n".join(book) + "\n")

if __name__ == "__main__":
    paths = sys.argv[1:] or sorted(glob.glob(os.path.join(ROOT, "lessons", "*.html")))
    meta = [convert(p) for p in paths]
    if not sys.argv[1:]: write_books(meta)
    print("converted", len(meta), "lessons")
    if unknown: print("unhandled tags:", sorted(unknown))
