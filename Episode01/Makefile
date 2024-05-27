# Required software for generating slide PDFs:
#
#   - texlive (includes Beamer, install using "apt install texlive-latex-extra"
#     should work)
#   - pandoc (for conversion of Markdown to PDF): getting the latest
#     version is recommended (e.g., the pandoc in Ubuntu 22.04
#     is too old)
#   - pandoc-beamer-block filter (https://github.com/chdemko/pandoc-beamer-block,
#     install using "pip install pandoc-beamer-block")
#   - pandoc-latex-fontsize filter (https://github.com/chdemko/pandoc-latex-fontsize,
#     install using "pip install pandoc-latex-fontsize")
#   - panflute (used for our own filters, install using
#     "pip install panflute")

SRCS = episode01.md
PDFS = $(SRCS:%.md=%.pdf)

# Pandoc filters
FILTERS = --filter pandoc-beamer-block \
	--filter pandoc-latex-fontsize \
	--filter filters/pandoc_latex_color.py \
	--filter filters/subst_var.py \
	--filter filters/center_inline.py \
	--filter filters/absolute.py

# Pandoc metadata variables
METADATA =

# Generate pdf from markdown
%.pdf : %.md
	pandoc $(FILTERS) $(METADATA) -t beamer --slide-level=2 $*.md -o $*.pdf

# Convert to Pandoc "native" format from markdown.
# Useful for looking at the AST for filter creation purposes.
# This command does *not* run filters, in order to see what the original
# AST of the input file is.
%.native : %.md metadata/dates.csv
	pandoc $(METADATA) -t native $*.md -o $*.native

# Convert to LaTeX from markdown.
# Useful for debugging (i.e., figuring out why output doesn't look right.)
%.tex : %.md metadata/dates.csv
	pandoc -s $(FILTERS) $(METADATA) -t beamer $*.md -o $*.tex

all : $(PDFS)

# Generate frame image PNGs (for the video)
render : episode01.pdf
	mkdir -p frame
	convert -density 900 -resize 1920x1080 episode01.pdf 'frame/episode01_%02d.png'

all : $(PDFS)

.PHONY: depend
depend :
	./mkdeps.sh $(PDFS) > depend.mak

depend.mak :
	touch $@

clean :
	rm -f $(PDFS)

include depend.mak
