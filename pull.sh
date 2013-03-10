#!/bin/bash

in=~/buildtool/apk_in
src=~/buildtool/source_roms

shopt -s failglob
echo "[--- Choose rom zip to extract from, or x to exit ---]"
echo
cd $src
select zip in *.zip
do
    [[ $REPLY == x ]] && . ~/buildtool/build
    [[ -z $zip ]] && echo "Invalid choice" && continue
    echo
	for apk in $(<~/buildtool/translation_list.txt); do 
unzip -j -o -q $zip system/app/$apk -d $in 2&>1 > /dev/null;
	done
unzip -j -o -q $zip system/framework/framework-res.apk -d $in 2&>1 > /dev/null;
unzip -j -o -q $zip system/framework/framework-miui-res.apk -d $in 2&>1 > /dev/null;
done
