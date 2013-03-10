#!/bin/bash

HOME=~/buildtool
DEC=~/buildtool/apk_in/decompiled
FIX=~/buildtool/src_fix

echo ""
echo "[--- Fix MIUI sources ---]"
echo ""

echo ""
echo "...Fixing framework-miui-res.apk"
echo ""

grep -q -e '<item>da_DK</item>' $DEC/framework-miui-res.apk/res/values/arrays.xml || sed -i 's|<item>zh_TW</item>|<item>da_DK</item>|' ~/buildtool/apk_in/decompiled/framework-miui-res.apk/res/values/arrays.xml

echo ""
echo "...Fixing Browser.apk (smali)"
echo ""

patch -i $FIX/Browser/MiuiSuggestionsAdapter.diff $DEC/Browser.apk/smali/com/android/browser/MiuiSuggestionsAdapter.smali
cd $DEC/Browser.apk/smali/com/android/browser/ 
rm -f -r *.rej
rm -f -r *.orig


cd $HOME


