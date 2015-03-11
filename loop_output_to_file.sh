#!/bin/bash

# set up a results file if it doesn't exist.
# if it does, delete it and create a new one
RESULTFILE="results.txt"
if [ -f $RESULTFILE ]; then
  echo removing previous results file...
  rm $RESULTFILE
  echo done!
  echo creating the new results file...
  touch $RESULTFILE
  echo done!
else
  echo creating a results file...
  touch $RESULTFILE
  echo done!
fi

# set up a notfound file if it doesn't exist (just for fun, really).
# if it does, delete it and create a new one
NOTFOUND="notfound.txt"
if [ -f $NOTFOUND ]; then
  echo removing notfound file...
  rm $NOTFOUND
  echo done!
  echo creating the new notfound file...
  touch $NOTFOUND
  echo done!
else
  echo creating a notfound file...
  touch $NOTFOUND
  echo done!
fi

# go through each .txt file in 'search_directory' inside whatever directory this script is in.
# call each file 'f' in this loop
for f in search_directory/*.txt; do

  # set the pattern to find. this is technically a regex, but a simple one
  FIND="target"

  # if it's found inside the file....
  echo searching for \'$FIND\' in $f...
  if grep -q $FIND $f; then
    echo search done!
    # print out some information
    echo $f has the string \'target\' in it
    echo adding it to the results file...
    # and add its filename to the bottom of the results file
    echo $f >> $RESULTFILE
  else
    echo search done!
    # otherwise print out some other information
    echo $f does not have the string \'target\' in it
    echo adding it to the notfound file...
    # and add its filename to the bottom of the notfound file
    echo $f >> $NOTFOUND
  fi
done
