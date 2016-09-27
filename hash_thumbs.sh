find $* -name "*_thumbnail_*.jpg" -exec imagehash -i {} \; > thumbnails_hashes.txt
