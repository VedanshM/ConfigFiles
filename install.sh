#!/bin/bash

DIR='Files'
homeFiles=$(find $DIR -maxdepth 1 -type f) 

for file in ${homeFiles[@]}; do
	bname=$(basename $file)
	echo $file  $bname
	#cp -li $file $HOME/$bname
done

