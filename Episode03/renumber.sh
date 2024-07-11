#! /usr/bin/env bash

for f in readout-overview-??.xopp; do
  new_number=$(echo $f | perl -ne '/(\d\d)/ && printf "%03d\n", $1')
  echo "Renaming $f to readout-overview-${new_number}.xopp..."
  git mv $f readout-overview-${new_number}.xopp
done

echo "done"
