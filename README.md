# fvdupes
Find duplicate videos by extracting frames, and comparing them using image hashing

# Requirements:

* https://github.com/fps/imagehash
* https://github.com/fps/openthumbnailer

# Issues

This is totally a hack. Needs lots of improvements:

* Write thumbnails into a temp dir, unless requested
* Fix the race condition between writing thumbs, and assembling a list of them and associating them to their hashes by way of line number (doh - easy fix, but too lazy)
* Install the script somewhere
* yada yada
