#!/bin/bash
# Build all course PDFs: 72 lessons, 12 week books, one full book. Prints page counts.
# Run: bash tools/build.sh
cd "$(dirname "$0")/.." || exit 1
python3 tools/typ.py || exit 1
mkdir -p pdf
fail=0
for f in typst/lessons/*.typ; do
  n=$(basename "$f" .typ)
  typst compile --root . --font-path typst/fonts "$f" "pdf/$n.pdf" || { echo "COMPILE FAIL $n"; fail=1; continue; }
  p=$(pdfinfo "pdf/$n.pdf" | awk '/^Pages/{print $2}')
  printf '%s %s\n' "$n" "$p"
  [ "$p" -gt 4 ] && { echo "TOO LONG: $n ($p pages)"; fail=1; }
done | tee pdf/pages.txt
for w in typst/week-*.typ; do typst compile --root . --font-path typst/fonts "$w" "pdf/$(basename "$w" .typ).pdf" || fail=1; done
typst compile --root . --font-path typst/fonts typst/book.typ pdf/book.pdf || fail=1
echo "book pages: $(pdfinfo pdf/book.pdf | awk '/^Pages/{print $2}')"
tofu=$(pdftotext pdf/book.pdf - | grep -c '▯')
echo "tofu glyphs: $tofu"; [ "$tofu" = 0 ] || fail=1
grep -q 'TOO LONG\|FAIL' pdf/pages.txt && fail=1
exit $fail
