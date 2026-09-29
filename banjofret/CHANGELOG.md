# Changelog

All notable changes to this project are documented here.
The project follows [Semantic Versioning](https://semver.org/).

## [1.0.0] - 2026-09-28

### Added
- `banjofret` environment: black-and-white 24-fret 5-string banjo fretboard with
  chromatic note names on every position; the fifth string starts at fret 5.
- Painting commands `\bfpaint`, `\bfpaintnote`, `\bfpaintstring`,
  `\bfpaintfret` and `\bflegend`; `(string,fret)` notation.
- Minimalist palette (`blue`, `green`, `amber`, `coral`, `violet`, `teal`,
  `gray`) with semantic aliases (`root`, `third`, `fifth`, `seventh`, ...).
- Options: fret window, width, accidentals (sharp/flat/both), tuning, string
  order, left-handed mirroring, focus mode, title, labels, markers, note font.
- Drawing order guarantees note names above strings and colours.
- Documented `.dtx` source, `.ins` installer, l3build tests and CI workflow.
