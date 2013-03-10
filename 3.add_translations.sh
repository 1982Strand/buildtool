#!/bin/bash


main=~/buildtool/translations/XML_MIUI-v5_Danish/Danish/main
device=~/buildtool/translations/XML_MIUI-v5_Danish/Danish/device/m0
dst=~/buildtool/apk_in/decompiled
home=~/buildtool

echo ""
echo "[--- Adding Danish Translations ---]"
echo ""

cd $main

for apk in $(<$home/translation_list.txt); do
                if [ -d "$dst/$apk" ]; then
                cp -r -f "$apk" $dst;
fi
done

cd $device

for apk in $(<$home/translation_list.txt); do
                if [ -d "$dst/$apk" ]; then
                cp -r -f "$apk" $dst;
fi
done

cd $dst
if [ -d ControlPanel.apk ]
then cp -r -f $main/ControlPanel.apk $dst
fi
cd $home
