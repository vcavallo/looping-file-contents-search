hi!

use the `loop_output_to_file.sh` script. the other one (`loop.sh`) was the first one i 
started messing with to see how this all works. it just prints stuff instead of saving 
results to a file.

- `search_directory` is where this script will look for files
- it will loop over each one and search the file's contents for a particular pattern.
- if it's found, it'll add the filename to a `results.txt` file
- otherwise it'll add it to a `notfound.txt` file

before you can run any of these .sh scripts, you'll need to do this on it:

`$ chmod a+x loop_output_to_file.sh` 
or 
`$ chmod a+x loop.sh`

that makes it executable. to run the script, do:

`$ ./loop_output_to_file.sh`

you should see a bunch of stuff printing out. ... or it's broken.
