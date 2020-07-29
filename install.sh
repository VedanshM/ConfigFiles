#!/bin/bash

DIR='Files'
homeFiles=$(find $DIR -maxdepth 1 -type f) 

for file in ${homeFiles[@]}; do
	bname=$(basename $file)
	echo $bname
	cp -i $file $HOME/$bname
done

