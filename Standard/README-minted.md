# minted

`minted` is a LaTeX package for syntax highlighting.

## About

This README provides basic instructions on how to setup and use [minted](https://github.com/gpoore/minted).

## Setup

The `minted` package must be installed with the package manager of your LaTeX distribution.

- on Debian it is available in `texlive-latex-extra`: `sudo apt-get install texlive-latex-extra`

## Requirements

minted requires the `pygments` python package to be installed (and available on the PATH).

- on Debian: `sudo apt-get install python3-pygments`
- on Debian (alternative): `sudo easy_install Pygments`

## CoreASM lexer

`pygments` doesn't include native support for CoreASM.

A CoreASM lexer is avilable at [github]() and has been placed in this repository, so you don't have to install it.

## Execution

shell escape must be enabled (unless you use the draft mode), e.g. via `pdflatex -shell-escape`.

- TeXiFy IDEA: this setting can be provided under "Run/Debug Configurations" -> "Custom compiler arguments" -> "--shell-escape". Also, it's best to have both "Separate auxiliary files from output" and "Separate output files from source" disabled.
