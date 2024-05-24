# Required software for generating slide PDFs:
#
#   - texlive (includes Beamer, install using "apt install texlive-latex-extra"
#     should work)
#   - pandoc (for conversion of Markdown to PDF): getting the latest
#     version is recommended (e.g., the pandoc in Ubuntu 22.04
#     is too old)
#   - csvkit (used for metadata substitution, e.g. lecture date,
#     install using "apt install csvkit")
#   - pandoc-beamer-block filter (https://github.com/chdemko/pandoc-beamer-block,
#     install using "pip install pandoc-beamer-block")
#   - pandoc-latex-fontsize filter (https://github.com/chdemko/pandoc-latex-fontsize,
#     install using "pip install pandoc-latex-fontsize")
#   - panflute (used for our own filters, install using
#     "pip install panflute")

# Values of general (non-lecture-specific) pandoc metadata variables.
# Note that the filters/subst_var.py filter will replace "mustache"
# delimited occurrences of these variables with their values. E.g.,
# "{{semester}}" will get replaced with the value of the Pandoc "semester"
# metadata variable.
COURSENAME = 601.418/618 Operating Systems
SEMESTER = spring2024
PRESENTER = David Hovemeyer

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

.PHONY: depend
depend :
	./mkdeps.sh $(PDFS) > depend.mak

depend.mak :
	touch $@

clean :
	rm -f $(PDFS)

include depend.mak
