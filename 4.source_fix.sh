#!/bin/bash

DEC=~/buildtool/apk_in/decompiled
FIX=~/buildtool/src_fix


echo ""
echo "[--- Fix MIUI sources ---]"
echo ""

echo ""
echo "...Fixing framework-miui-res.apk"
echo ""


patch -i $FIX/framework-miui-res/apktool.diff $DEC/framework-miui-res.apk/apktool.yml
cd $DEC/framework-miui-res.apk/ 
rm -f -r *.rej
rm -f -r *.orig


echo ""
echo "...Fixing MiuiCompass.apk"
echo ""


patch -i $FIX/MiuiCompass/apktool.diff $DEC/MiuiCompass.apk/apktool.yml
cd $DEC/MiuiCompass.apk/
rm -f -r *.rej
rm -f -r *.orig

echo ""
echo "...Fixing Browser.apk (arrays.xml)"
echo ""

sed -i s/'\&amp\;amp\;amp\;'/'\&amp\;'/g $DEC/Browser.apk/res/values/arrays.xml


