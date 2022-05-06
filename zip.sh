#!/bin/bash
zipname=$(grep "G" META-INF/com/google/android/update-binary | head -n1 | cut -d ' ' -f2-6 | tr -d ";" | sed 's/"//g;s/ /-/g')
if [[ -z $1 ]]; then
	zip -r9 $zipname.zip * -x .git* README.md zip.sh *.zip
else
	zip -r9 $zipname-$1.zip * -x .git* README.md zip.sh *.zip
fi
