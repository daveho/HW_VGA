#! /usr/bin/env bash

# Create a blank pdf file consisting of a specified number of 6"x3.375"
# pages in landscape mode. Useful for creating a starter file for class notes.
# Requires convert (from imagemagick) and qpdf.

if [ "$#" -ne 2 ]; then
  echo "Usage: ./create_blank.sh <num pages> <outfile>"
  exit 1
fi

npages="$1"
outfile="$2"

rm -f blank*.pdf

i=1
while [ "$i" -le "$npages" ]; do
  convert xc:none -units PixelsPerInch -density 300 -page 1012.5x1800  blank${i}.pdf
  qpdf blank${i}.pdf blank${i}_rot.pdf --rotate=90:1-1
  i=$(expr ${i} + 1)
done

qpdf --empty --pages $(ls blank*_rot.pdf) -- ${outfile}

rm -f blank*.pdf
