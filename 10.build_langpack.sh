#!/bin/bash


echo ""
echo "[--- Creating flashable zip ---]"
echo ""


echo -n "Enter version (x.xx.xx) and press [ENTER]: "
read ver
[[ "$ver" =~ ^[0-9]{1}\.[0-9]{1,2}\.[0-9]{1,2}$ ]] && echo "Output filename is ${ver}_DA.zip" || echo "Invalid"

tlock=~/buildtool/flashable/template/system/media/theme/default
dst=~/buildtool/flashable/system/media/theme/default
src=~/buildtool/translations/XML_MIUI-v5_Danish/Danish/extras/lockscreen
parent=~/buildtool/flashable
src2=~/buildtool/apk_out
home=~/buildtool

cd $parent
mkdir system
cd system
mkdir app
mkdir framework
mkdir media
cd media
mkdir theme
mkdir audio
cd theme
mkdir default
cd $parent/system/media/audio
mkdir ringtones
mkdir alarms
mkdir notifications
cd $home


for apk in $(<$home/translation_list.txt); do cp -r -f "$src2/$apk" $parent/system/app; done

#cp -f $home/mods/3way/${ver}/android.policy.jar $parent/system/framework
#cp -f $home/mods/crt-off/${ver}/android.policy.jar $parent/system/framework
#cp -f $home/mods/crt-off/${ver}/services.jar $parent/system/framework
cp -f $home/mods/out/${ver}/*.jar $parent/system/framework
mv -f $parent/system/app/framework-miui-res.apk $parent/system/framework
cp -f $parent/template.zip $parent/flashable.zip
cp -f -r $parent/template/system/media/audio $parent/system/media

7za u -tzip $tlock/lockscreen.zip $src/advance
cp -f $tlock/lockscreen.zip $tlock/lockscreen
cp -f $tlock/lockscreen $dst
7za a -tzip $parent/flashable.zip $parent/system -mx3
mv -f $parent/flashable.zip $parent/${ver}_DA.zip
rm -r $parent/system
cd ~/buildtool
