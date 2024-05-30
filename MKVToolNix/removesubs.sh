#!/bin/bash
basedir="/home/vboxuser/Share/dl/*"
fontdir="/home/vboxuser/Share/fonts/OpenSansCondensedMedium.ttf"
fontname=$(basename "$fontdir")
for f in $basedir
do
    filename=$(basename "$f")
    input="/home/vboxuser/Share/dl/$filename"
    output="/home/vboxuser/Share/processed/$filename"
    /usr/bin/mkvmerge --priority lower  			\
        --output "$output"              			\
	--no-attachments					\
	--subtitle-tracks 3					\
	--language 0:und					\
	--track-name "0:[Judas] x265 10b"			\
        --display-dimensions 0:1920x1080 			\
        --language 1:ja                 			\
	--track-name "1:[Judas] JAP Stereo (Opus 112Kbps)" 	\
        --language 2:en                 			\
	--track-name "2:[Judas] ENG Stereo (Opus 112Kbps)"	\
        --sub-charset 3:UTF-8           			\
        --language 3:en                 			\
	--track-name "3:English [Full] (GJM)"			\
        '(' "$input" ')'                			\
	--attachment-name "$fontname"				\
        --attachment-mime-type font/ttf				\
	--attach-file "$fontdir"				\
	--track-order 0:0,0:1,0:2,0:3
done
