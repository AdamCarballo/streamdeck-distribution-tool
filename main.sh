#!/bin/sh

# $1 = input path
# $2 = output path
# $3 = workspace path
# $4 = runtime OS

echo "$3/$1"
echo "$3/$2"

if [ $4 == "Windows" ]
then
	DistributionTool.exe -b -i "$3/$1" -o "$3/$2"
elif [ $4 == "macOS" ]
then
   	./DistributionTool -b -i "$3/$1" -o "$3/$2"
else
  	echo "StreamDeck only supports Windows or MacOS"
  	exit 1
fi