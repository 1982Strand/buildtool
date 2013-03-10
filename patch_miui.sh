#!/bin/bash

# Original rom ligger i source_roms mappe
# Udpak de nødvendige filer der skal patches, pak dem ud til flashable/original/in mappen, i korrekt mappestruktur
# udfør patching
# kopier (og omdøb) original rom til flashable/original/out
# kopier nye filer ind i omdøbte original rom - dvs ingen "lang-pack", men istedet en moddet full rom - HVER uge.. Kun "lang-pack" til miuiandroids rom.


# /system/media/theme/.data/meta/mms/default.mrm

SOURCE=~/buildtool/source_roms
HOME=~/buildtool
DEC=~/buildtool/apk_in/decompiled
IN=~/buildtool/flashable/original/in
OUT=~/buildtool/flashable/original/out

clear
echo -n "Enter ROM version (x.xx.xx) and press [ENTER]: "
read ver
[[ "$ver" =~ ^[0-9]{1}\.[0-9]{1,2}\.[0-9]{1,2}$ ]] && echo "Source rom is miui_i9300_${ver}.zip" || echo "Invalid"

unzip -o $SOURCE/miui_i9300_${ver}.zip system/build.prop -d $IN
unzip -o $SOURCE/miui_i9300_${ver}.zip system/media/theme/.data/meta/\* -d $IN

echo ""
echo "[--- Patch Miui Theme titles ---]"
echo ""

# FØLGENDE ER TESTET OG VIRKER !!
cd $IN
find $IN -type f|xargs sed -i 's/默认/Standard/g'

cd $HOME

echo ""
echo "[--- Patch Build.prop ---]"
echo ""

cd $IN
find $IN -type f|xargs sed -i 's/ro.product.locale.language=zh/ro.product.locale.language=da/g'
find $IN -type f|xargs sed -i 's/ro.product.locale.region=CN/ro.product.locale.region=DK/g'
cd $HOME

cp -f $SOURCE/miui_i9300_${ver}.zip $OUT
cd $HOME
cp -f $HOME/apk_out/*.apk $IN/system/app
cp -f $HOME/apk_out/framework-miui-res.apk $IN/system/framework
rm -r $IN/system/app/framework-miui-res.apk
rm -r $IN/system/app/framework-res.apk
rm -r $IN/system/media/theme/.directory
cp -f $HOME/flashable/template/system/media/theme/default/lockscreen $IN/system/media/theme/default/lockscreen
cp -f $HOME/mods/out/${ver}/*.jar $IN/system/framework

7za u -tzip $OUT/miui_i9300_${ver}.zip $IN/system

rm -r $IN/system/app/*.apk
rm -r $IN/system/framework/*.apk
rm -r $IN/system/framework/*.jar
