#!/bin/bash

loclister=(
    "$HOME/Library/Arduino15/preferences.txt"
    "$HOME/Library/Arduino/preferences.txt"
    "$HOME/.arduino15/preferences.txt"
    "$HOME/.arduino/preferences.txt"
)

for filepath in ${loclister[@]}; do
	if [ -f "$filepath" ] 
	then
		sketch_loc=$(grep 'sketchbook.path' "$filepath" | cut -d "=" -f 2)
		
		echo 'Found arduino sketchbook, installing files to sketchbook'
		
		cp -rf "$(dirname "$0")/MakerSpaceExamples" "$sketch_loc"
		
		echo 'Arduino MakerSpaceExamples installed...'
		exit 0
	fi
done

echo 'Unable to find skechbook, unable to install examples.'
exit 1
