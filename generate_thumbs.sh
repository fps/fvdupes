frames="0000005000 0000015000"

find $* -type f -exec openthumbnailer -i {} -o {}_thumbnail_%010d.jpg  -f 5000 -f 15000 \;
