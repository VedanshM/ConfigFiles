#!/bin/bash

SourceDir='Files'
homeFiles=$(find $SourceDir -maxdepth 1 -type f) 

for file in ${homeFiles[@]}; do
	bname=$(basename $file)
	echo $bname
	cp -i $file $HOME/$bname
done

