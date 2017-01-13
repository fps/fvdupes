
STORES=$*

echo '# generating thumbs...'
./generate_thumbs.sh $STORES

echo '# collecting thumbs...'
./collect_thumbs.sh $STORES

echo '# hashing thumbs...'
./hash_thumbs.sh $STORES

echo '# matching hashes...'
./match_hashes.sh

echo '# checking for hash dupes...'
./check_hash_dupes.sh

echo '# done. exiting.'
