# tylog-pack-pt-pt

European Portuguese A2 → B1 course (72 lessons, 12 weeks, written for Russian
speakers) and the build tooling that turns it into a
[TyLog](https://github.com/berlogabob/TypstSeq) **module pack**. It is the worked
example for the pack authoring guide (`docs/modules/AUTHORING.md` in the TyLog repo).

The pack is a data-only zip: lesson notes, one `#tylog.task` per lesson (due date =
the start date you pick on install + the lesson offset, 6 lessons a week), audio
with waveform peaks. Install it in TyLog: Settings > Modules > Install from file.

## Layout
- `lessons/*.html` — source of truth, one file per lesson.
- `tools/pack.py` — lessons + `assets/audio` → `dist/pt-pt-a2b1.tylogpack`
  (notes, audio, `.peaks` sidecars, manifest with `unit: lessons`).
- `tools/tts.py` — generates the dialogue audio with edge-tts (pt-PT voices).
- `tools/typ.py`, `tools/build.sh`, `typst/` — optional PDF books of the same lessons.
- `assets/course.css` — HTML styling.

## Build
```bash
uv run --with edge-tts tools/tts.py           # audio into assets/audio (not committed)
uv run tools/pack.py                          # needs ffmpeg for peaks
dart run packages/tylog_core/bin/tylog.dart pack-validate dist/pt-pt-a2b1.tylogpack   # from the TyLog repo
```

## Licenses
- Lesson text (`lessons/`, `typst/` sources): **CC BY-SA 4.0**, see `LICENSE-CONTENT.txt`.
- Code (`tools/`): **MIT**, see `LICENSE`.
- Fonts in `typst/fonts` (Noto Sans) are under the SIL Open Font License.
- Audio is generated with Microsoft Edge neural voices and is **not** part of this
  repository; check the voice provider's terms before redistributing generated audio.
