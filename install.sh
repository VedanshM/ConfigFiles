#!/bin/bash

DIR='Files'
homeFiles=$(find $DIR -maxdepth 1 -type f) 

for i in ${homeFiles[@]}; do
	echo $i
done

