# Resume

A single-page, one-column resume for software developers. It uses the base latex templates and fonts
to provide ease of use and installation when trying to update the resume. The different sections are
clearly documented and custom commands are used to provide consistent formatting. The three main
sections in the resume are education, experience, and projects.

## Motivation

(Sourabh Bajaj) I created this template as managing a resume on Google Docs was hard and changing
any formatting was too difficult since it had to be applied in multiple places. Most currently
available templates either focus on two columns, or are multiple pages long. I personally found the
two-column templates hard to focus while multiple-page resumes were just too long to be used in
career fairs.

## This Fork

(Kevin Kredit) I added a few more sections and `\input`s for references and contact info, assuming
you don't want to post those online. Also added a simple way to create `multicol` sections with a
variable number of columns. See instructions in `resume.tex`.

To build, run `make` or `make example`. Requires a [working installation](#latex-installation) of
LaTeX.

## Preview

![Resume Screenshot](/example/example-resume-1.png)

## LaTeX Installation

If you're new to LaTeX, an easy way to get started is with TexStudio.

Ubuntu:

```sh
$ sudo apt-get install texstudio texlive texlive-latex-extra latexmk
```

Windows:

- Install [TexStudio](http://texstudio.sourceforge.net/)
- Install [TexLive](https://www.tug.org/texlive/acquire-netinstall.html)

## License

Format is MIT but all the data is owned by Kevin Kredit.
