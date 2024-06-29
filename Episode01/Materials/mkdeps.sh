#! /usr/bin/env bash

# Automatically generate dependencies of lecture PDFs on the Markdown
# source and the figures. This relies on the figures being in a
# directory called "figures/lecNN", where "NN" is the lecture number.

PDFS="$@"

for f in ${PDFS}; do
	figdir=$(echo $f | sed -e 's,lecture,lec,' | sed -e 's,\.pdf,,')
	mdsrc=$(echo $f | sed -e 's,\.pdf,.md,')
	echo "$f : ${mdsrc} \$(shell ls figures/${figdir}/* 2> /dev/null)"
	echo ""
done
