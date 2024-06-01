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
    
    # replace output with $outpath      :   --output "$outpath"
    # $inpath goes within the braces    :   '(' "$inpath" ')'
done
