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
- `tools/tts_open.py` — generates the dialogue audio with open models only (Chatterbox
  Multilingual, MIT), voices cloned from CC0 European Portuguese recordings in `assets/voices/`.
- `tools/tts_studio.py` — same job on an Unsloth Studio PC over HTTP (Chatterbox GGUF; `--clips=a,b` redoes single clips).
- `tools/check_audio.py` — transcribes each clip with Whisper and scores it against the lesson
  text; clips under 0.9 are regenerated.
- `tools/typ.py`, `tools/build.sh`, `typst/` — optional PDF books of the same lessons.
- `assets/course.css` — HTML styling.

## Build
```bash
uv run --python 3.11 --with chatterbox-tts --with "setuptools<81" tools/tts_open.py   # audio into assets/audio (not committed)
uv run --with faster-whisper --with av==17.0.1 tools/check_audio.py               # word accuracy per clip (STUDIO_URL=... scores on Studio STT)
uv run tools/pack.py                          # needs ffmpeg for peaks
dart run packages/tylog_core/bin/tylog.dart pack-validate dist/pt-pt-a2b1.tylogpack   # from the TyLog repo
```

## Licenses
- Lesson text (`lessons/`, `typst/` sources): **CC BY-SA 4.0**, see `LICENSE-CONTENT.txt`.
- Code (`tools/`): **MIT**, see `LICENSE`.
- Fonts in `typst/fonts` (Noto Sans) are under the SIL Open Font License.
- Audio (in released packs, not committed here): generated with Chatterbox Multilingual
  (Resemble AI, MIT licence). Voice references in `assets/voices/` are cut from the
  "tugão" European Portuguese recordings of OHF-Voice/voice-datasets (CC0); voice 2 is the
  same recording raised in pitch. The generated audio is released under CC BY-SA 4.0 like
  the lesson text. Chatterbox adds an inaudible PerthNet watermark marking it as generated.

The persons and the school (Escola Lumen) in the dialogues are fictional.
