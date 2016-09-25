
STORES=$*

./generate_thumbs.sh $STORES
./collect_thumbs.sh $STORES
./hash_thumbs.sh $STORES
./match_hashes.sh
./check_hash_dupes.sh

