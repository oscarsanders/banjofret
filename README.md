# banjofret

**Colour-coded fretboard diagrams for the 5-string banjo, in LaTeX.**

`banjofret` typesets a clean black-and-white diagram of a 5-string banjo
fretboard — 24 frets, short fifth string starting at fret 5, open-G tuning —
with the chromatic note name printed on every string/fret position. You then
*paint* the notes you want (by position, string, fret or note name) with a small
palette of minimalist colours. Note names are always drawn on top of the strings
and the colours.

```latex
\documentclass{article}
\usepackage[landscape,margin=1.5cm]{geometry}
\usepackage{banjofret}
\begin{document}

\begin{banjofret}[title={C major chord}]
  \bfpaint{(2,1)}{root}              % (string,fret)
  \bfpaint{(4,2); (1,2)}{third}
  \bfpaint{(3,0); (5,5)}{fifth}
  \bflegend{root=Root, third=Third, fifth=Fifth}
\end{banjofret}

\end{document}
```

## Commands at a glance

| Command | Purpose |
|---|---|
| `\begin{banjofret}[options] … \end{banjofret}` | one fretboard diagram |
| `\bfpaint{(3,5); (2,1)}{blue}` | paint `(string,fret)` positions |
| `\bfpaintnote{G, B, Fs}{amber}` | paint every occurrence of the given notes |
| `\bfpaintstring{3}{0-5}{green}` | paint a fret range on one string |
| `\bfpaintfret{7}{violet}` | paint a fret (or range) on all strings |
| `\bflegend{blue=Label, root=Label}` | add a colour legend |
| `\banjofretset{options}` | set default options |

Colours: `blue green amber coral violet teal gray`, plus the semantic aliases
`root third fifth seventh extension passing target`. Any `xcolor` expression also
works.

Main options: `first fret`, `last fret`, `width`, `accidentals` (`sharp`, `flat`,
`both`), `tuning`, `string order`, `left handed`, `focus`, `title`,
`string labels`, `fret numbers`, `markers`, `note font`.

Position convention: string 1 is the thinnest full-length string (high D),
string 5 the short drone string that begins at fret 5, so `(5,5)` is the open
fifth string (G).

## Installation

```
latex banjofret.ins      # generates banjofret.sty
pdflatex banjofret.dtx   # (twice) builds the manual banjofret.pdf
```

Copy `banjofret.sty` next to your document or into your local `texmf` tree
(`TEXMF/tex/latex/banjofret/`). On Overleaf, upload `banjofret.sty`.

Requirements: LaTeX 2022-06-01 or newer, `tikz`, `xcolor`, `l3keys2e`.
Works with pdfLaTeX, XeLaTeX and LuaLaTeX.

## Repository layout

```
banjofret.dtx      documented source (manual + implementation)
banjofret.ins      DocStrip installer
banjofret.pdf      user manual
README.md  CHANGELOG.md  LICENSE.md
build.lua          l3build configuration
testfiles/         l3build regression tests
examples/          example snippets and a complete example document
.github/workflows  continuous integration
```

## Development

```
l3build check      # regression tests (pdfTeX, XeTeX, LuaTeX)
l3build doc        # typeset the manual
l3build ctan       # build a CTAN-ready archive
```

## License

Released under the [LaTeX Project Public License v1.3c](https://www.latex-project.org/lppl/lppl-1-3c/)
or later. See `LICENSE.md`.
