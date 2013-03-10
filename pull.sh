#!/bin/bash

shopt -s failglob
echo "[--- Choose rom zip to extract from, or x to exit ---]"
echo
cd $SRC
select zip in *.zip
do
    [[ $REPLY == x ]] && . $HOME/build
    [[ -z $zip ]] && echo "Invalid choice" && continue
    echo
	for apk in $(<$HOME/translation_list.txt); do 
unzip -j -o -q $zip system/app/$apk -d $IN 2&>1 > /dev/null;
	done
unzip -j -o -q $zip system/framework/framework-res.apk -d $IN 2&>1 > /dev/null;
unzip -j -o -q $zip system/framework/framework-miui-res.apk -d $IN 2&>1 > /dev/null;
done
