#!/bin/bash
# set indir to directory where mkv files are located
indir="/home/vboxuser/Share/dl"
# set outdir to directory where processed mkv files should be stored
outdir="/home/vboxuser/Share/processed"
for file in "$indir/*"
do
    filename=$(basename "$file")
    inpath="$indir/$filename"
    outpath="$outdir/$filename"
    # insert the MKVToolNix command:
    /usr/bin/mkvmerge --priority lower --output "$outpath" --subtitle-tracks 2 --no-attachments --language 0:ja --track-name '0:[Judas] x265 10b' --display-dimensions 0:1920x1080 --language 1:ja --track-name 1:Japanese --sub-charset 2:UTF-8 --language 2:en --track-name 2:English --default-track-flag 2:yes '(' "$input" ')' --attachment-name OpenSansCondensedMedium.ttf --attachment-mime-type font/ttf --attach-file /home/vboxuser/Share/fonts/OpenSansCondensedMedium.ttf --track-order 0:0,0:1,0:2
    # replace output with $outpath      :   --output "$outpath"
    # $inpath goes within the braces    :   '(' "$inpath" ')'
done
