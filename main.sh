#!/bin/sh

# $1 = input path
# $2 = output path
# $3 = runtime OS

if [[ $3 == "Windows" ]]
then
	$GITHUB_ACTION_PATH/DistributionTool.exe -b -i "$GITHUB_WORKSPACE\\$1" -o "$GITHUB_WORKSPACE\\$2"
elif [[ $3 == "macOS" ]]
then
   	$GITHUB_ACTION_PATH/./DistributionTool -b -i "$GITHUB_WORKSPACE/$1" -o "$GITHUB_WORKSPACE/$2"
else
  	echo "StreamDeck Distribution Tool only has binaries for Windows or MacOS."
  	exit 1
fi