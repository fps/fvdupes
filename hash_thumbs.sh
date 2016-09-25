. stores.sh

find $STORES -name "*_thumbnail_*.jpg" -exec /home/fps/src/projects/imagehash/imagehash -i {} \; > thumbnails_hashes.txt
