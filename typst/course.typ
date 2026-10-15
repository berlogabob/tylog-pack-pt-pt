// Layout library for the PT-PT course PDFs. Generated lessons import this.
// Typst 0.15.1. Constructs verified against local TypstRAG (docs v0.15.1):
//   grid / side-by-side blocks ........ docs/content/guides/page-setup.typ, tutorial/3-advanced.typ
//   block stroke/radius/inset (cards) . docs/content/tutorial/3-advanced.typ, changelog/0.15.0.typ
//   table.header repeating ............ docs/content/guides/tables.typ
//   show heading.where(level:) ........ docs/content/tutorial/3-advanced.typ, tutorial/4-template.typ
//   text(lang:) ..................... docs/content/guides/accessibility.typ, changelog/0.12.0.typ
//   link() ........................... docs/content/reference/export/bundle.typ
//   page header/footer + counter ..... docs/content/guides/page-setup.typ
//   raw block ........................ docs/content/changelog/0.4.0.typ, changelog/0.14.0.typ
// Style lineage: ~/.claude/skills/typst-report/assets/lib.typ (tables, pill, callout)
// and IADE-ESP32-RFID-RGB/common.typ (card, duo).

// ---------------------------------------------------------------- TOKENS
#let accent = rgb("#2867c7")   // one accent, same as assets/course.css
#let ink = rgb("#202124")
#let muted = rgb("#62666d")
#let hairline = rgb("#d8dadd")
#let surface = rgb("#f6f7f8")
#let zebra = rgb("#fbfbfc")
#let body-font = ("Noto Sans", "Noto Sans Math", "Noto Sans Symbols 2", "Noto Sans Symbols")  // Math/Symbols: → ≈ ≠ ≤ ≥
#let mono-font = ("Roboto Mono", "Noto Sans Symbols 2", "Noto Sans Math", "Noto Sans")
#let body-size = 8.8pt

// ---------------------------------------------------------------- DOCUMENT
// meta: (n, week, day, title, lead)
#let lesson(meta, doc) = {
  set document(title: "Урок " + str(meta.n) + " — " + meta.title)
  set page(
    paper: "a4",
    margin: (top: 14mm, bottom: 12mm, x: 12mm),
    header: context {
      set text(size: 7.5pt, fill: muted)
      grid(columns: (1fr, auto),
        [Português Europeu · Semana #meta.week · Dia #meta.day · Урок #meta.n],
        align(right, meta.title))
      v(-4pt); line(length: 100%, stroke: 0.4pt + hairline)
    },
    footer: context {
      set text(size: 7.5pt, fill: muted)
      grid(columns: (1fr, auto), [Урок #meta.n], counter(page).display("1 / 1", both: true))
    },
  )
  set text(font: body-font, size: body-size, fill: ink, lang: "ru")
  set par(justify: false, leading: 0.6em, spacing: 0.7em)
  set list(marker: text(accent)[•], indent: 0.2em, spacing: 0.45em)
  set enum(indent: 0.2em, spacing: 0.45em)
  show heading: set block(above: 0.9em, below: 0.45em)
  show heading.where(level: 1): set text(size: 17pt, weight: 700, fill: ink)
  show heading.where(level: 2): it => block(above: 1.1em, below: 0.5em, width: 100%,
    stroke: (bottom: 1.2pt + accent), inset: (bottom: 3pt),
    text(size: 11.5pt, weight: 700, fill: ink, it.body))
  show heading.where(level: 3): set text(size: 9.6pt, weight: 700, fill: ink)
  show link: set text(fill: accent)
  show raw: set text(font: mono-font, size: 0.88em)
  show table.cell: set text(number-width: "tabular")
  set table(
    inset: (x: 5pt, y: 3.5pt),
    stroke: (x, y) => (
      top: if y == 1 { 0.6pt + ink } else { none },
      bottom: if y == 0 { 0.6pt + ink } else { 0.35pt + hairline },
    ),
    fill: (x, y) => if y > 0 and calc.odd(y) { zebra },
  )
  show table: set text(size: 8pt)
  show table.cell.where(y: 0): set text(weight: 700, size: 8pt)

  heading(level: 1, [Урок #meta.n · #meta.title])
  if meta.lead != none { v(-2pt); text(size: 9.6pt, fill: muted, meta.lead); v(4pt) }
  doc
}

// ---------------------------------------------------------------- MODULES
#let pt(body) = text(lang: "pt", body)

#let pill(label) = box(fill: accent.lighten(88%), radius: 2pt, inset: (x: 4pt, y: 1.5pt),
  outset: (y: 1.5pt), text(size: 7pt, weight: 600, fill: accent.darken(10%), label))

#let card(title, body, breakable: false, fill: surface) = block(
  width: 100%, breakable: breakable, fill: fill, stroke: 0.5pt + hairline, radius: 3pt,
  inset: (x: 8pt, y: 7pt), above: 0.6em, below: 0.6em,
  {
    set text(hyphenate: false)
    if title != none { text(size: 9.4pt, weight: 700, title); v(0.35em, weak: true) }
    body
  },
)

#let duo(a, b) = grid(columns: (1fr, 1fr), column-gutter: 8pt, a, b)

#let audio-ref(id) = block(above: 0.5em, below: 0.3em,
  text(size: 7.8pt, fill: muted)[#box(baseline: 1pt, polygon(fill: accent, (0pt, 0pt), (0pt, 7pt), (6pt, 3.5pt))) #link("../../assets/audio/" + id + ".mp3", raw("assets/audio/" + id + ".mp3"))])

// lines: array of (speaker, text); speaker may be ""
#let dialogue(lines) = card(none, breakable: true, {
  set text(lang: "pt", size: 8.6pt)
  set par(leading: 0.5em, spacing: 0.35em)
  for l in lines {
    if l.at(0) != "" [*#l.at(0):* #l.at(1)] else [#l.at(1)]
    parbreak()
  }
})

#let exercise(title, body) = card(title, body, breakable: true, fill: white)

// items: array of (title, content) — printed compact at the end of the lesson
#let answers(items) = {
  if items.len() == 0 { return }
  heading(level: 2, "Ответы")
  set text(size: 7.6pt)
  set par(leading: 0.48em, spacing: 0.35em)
  columns(3, gutter: 8pt, for it in items {
    block(breakable: true, above: 0.5em, below: 0.4em, {
      text(weight: 700, it.at(0)); linebreak(); it.at(1)
    })
  })
}

#let cbox = box(baseline: 1pt, width: 7pt, height: 7pt, stroke: 0.6pt + muted, radius: 1pt)
#let checklist-items(items) = {
  set list(marker: cbox, spacing: 0.35em)
  for it in items { list.item(it) }
}
#let checklist(items, title: "Результат урока") = card(title, {
  set list(marker: cbox, spacing: 0.35em)
  for it in items { list.item(it) }
})

#let sheet(body) = block(width: 100%, breakable: false, fill: surface, stroke: 0.5pt + hairline,
  radius: 3pt, inset: 7pt, raw(block: true, body))
