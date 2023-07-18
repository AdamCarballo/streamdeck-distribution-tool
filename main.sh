#!/bin/sh

# $1 = input path
# $2 = output path
# $3 = runtime OS
# $4 = working directory

if [[ $3 == "Windows" ]]
then
	cd $GITHUB_WORKSPACE\\$4
	$GITHUB_ACTION_PATH/DistributionTool.exe -b -i "$1" -o "$2"
	echo "$(PWD)"
elif [[ $3 == "macOS" ]]
then
	cd $GITHUB_WORKSPACE/$4
   	$GITHUB_ACTION_PATH/./DistributionTool -b -i "$1" -o "$2"
else
  	echo "StreamDeck Distribution Tool only has binaries for Windows or MacOS."
  	exit 1
fi