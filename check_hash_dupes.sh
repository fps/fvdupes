input=`cat hash_matches.txt`

IFS_BAK="$IFS"
IFS=$'\n'

for line in $input; do
    match1=`echo $line | cut -f 1 -d ' '`; 
    match2=`echo $line | cut -f 2 -d ' '`; 
    match1=`echo $match1 + 1 | bc`; 
    match2=`echo $match2 + 1 | bc`; 
    echo $match1 : $match2; 
    thumb1=`tail -n +$match1 thumbnails_list.txt | head -n 1 | sed -r -e 's;(.*?)_thumbnail_.*;\1;'`; 
    thumb2=`tail -n +$match2 thumbnails_list.txt | head -n 1 | sed -r -e 's;(.*?)_thumbnail_.*;\1;'`;

    if [ -f "$thumb1" ] && [ -f "$thumb2" ]; then
        if [ "$thumb1" = "$thumb2" ]; then
            continue
        fi

        nplayer "$thumb1" < /dev/null
        nplayer "$thumb2" < /dev/null

        echo "[1]" `ls -lh $thumb1`
        echo "[2]" `ls -lh $thumb2`

        echo "delete [1], [2] or none [0], or quit [q] followed by enter."
        read choice 
        if [ "$choice" = "q" ]; then
            break;
        fi
        if [ "$choice" = "0" ]; then
            continue;
        fi
        if [ "$choice" = "1" ]; then
            rm "$thumb1"
        fi
        if [ "$choice" = "2" ]; then
            rm "$thumb2"
        fi
    fi
done

IFS="$IFS_BAK"
