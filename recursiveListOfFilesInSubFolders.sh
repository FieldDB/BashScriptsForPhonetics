#!/bin/bash
[[ -n "$1" ]] || { echo "To use this script to list all files in all subfolders, type ./recursiveListOfFilesInSubFolders.sh  directoryToList outfile.txt "; exit 0 ; }

for d in `find $1 -type d`; 
  for file in *.mp3; do `/Applications/ffmpeg -i $file $file.wav`; done
done
