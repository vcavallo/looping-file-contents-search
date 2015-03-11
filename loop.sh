#!/bin/bash

# go through each .txt file in whatever directory this script is in.
# call each file 'f' in this loop
for f in *.txt; do

  # set the pattern to find, as a non-smart regex:
  FIND="target"

  # if it's found inside the file....
  if grep -q $FIND $f; then
    # print out some information
    echo $f has the string \'target\' in it
  else
    # otherwise print out some other information
    echo $f does not have the string \'target\' in it
  fi
done

