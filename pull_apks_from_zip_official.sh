#!/bin/bash

home=~/buildtool
dst=~/buildtool/apk_in

echo ""
echo "[--- Pull apks for editing ---]"
echo ""

cd $home/source_roms

echo -n "Enter version (x.xx.xx) and press [ENTER]: "
read ver
[[ "$ver" =~ ^[0-9]{1}\.[0-9]{1,2}\.[0-9]{1,2}$ ]] && echo "Rom version: ${ver}" || echo "Invalid"


	for files in $(<$home/translation_list.txt); do 
unzip -j -o -q miui_i9300_${ver}.zip system/app/$files -d $dst 2&>1 > /dev/null;
	done
unzip -j -o -q miui_i9300_${ver}.zip system/framework/framework-res.apk -d $dst 2&>1 > /dev/null;
unzip -j -o -q miui_i9300_${ver}.zip system/framework/framework-miui-res.apk -d $dst 2&>1 > /dev/null;

cd $home
