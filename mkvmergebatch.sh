#!/bin/bash
basedir="/home/vboxuser/Share/dl/*"
fontdir="/home/vboxuser/Share/fonts/OpenSansCondensedMedium.ttf"
fontname=$(basename "$fontdir")
for f in $basedir
do
    filename=$(basename "$f")
    input="/home/vboxuser/Share/dl/$filename"
    output="/home/vboxuser/Share/processed/$filename"
    /usr/bin/mkvmerge --priority lower    \
        --output "$output"                \
        --no-attachments                  \
        --language 0:und                  \
        --display-dimensions 0:720x480    \
        --compression 0:none              \
        --language 1:ja                   \
        --language 2:en                   \
        --sub-charset 3:UTF-8             \
        --language 3:en                   \
        '(' "$input" ')'                  \
        --attachment-name "$fontname"     \
        --attachment-mime-type font/ttf   \
        --attach-file "$fontdir"          \
        --track-order 0:0,0:1,0:2,0:3
done
