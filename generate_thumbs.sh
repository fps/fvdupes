find $* -type f -exec ~/src/projects/opencvthumbnailer/openthumbnailer -i {} -o {}_thumbnail_%010d.jpg  -f 5000 -f 15000 \;
