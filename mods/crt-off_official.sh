#!/bin/bash

# Pull android.policy.jar from current rom zip
# decompile android.policy.jar
# run rmline.sh on the smalis
# run the diff patch
# copy the 3 extra smali into a.p.jar dir and recompile it
# 
rom=~/buildtool/source_roms
home=~/buildtool/mods
src=~/buildtool/mods/3way
dst=~/buildtool/mods/crt-off
out=~/buildtool/mods/out

clear
echo -n "Enter ROM version (x.xx.xx) and press [ENTER]: "
read ver
[[ "$ver" =~ ^[0-9]{1}\.[0-9]{1,2}\.[0-9]{1,2}$ ]] && echo "Source rom is miui_i9300_${ver}.zip" || echo "Invalid"

echo ""
echo "[--- Creating CRT-Off effect ---]"
echo ""



cd $out
if [ -d ${ver} ]
then
	cd $ver
	if [ -f android.policy.jar ]
	then
	cp -f android.policy.jar $dst
	else unzip -u -j $src/miui_i9300_${ver}.zip system/framework/android.policy.jar -d "$dst"
	fi
		if [ -f services.jar ]
		then
		cp -f services.jar $dst
		else
		unzip -u -j $rom/miui_i9300_${ver}.zip system/framework/services.jar -d "$dst"
		fi
else
	unzip -u -j $src/miui_i9300_${ver}.zip system/framework/android.policy.jar -d "$dst"
	unzip -u -j $rom/miui_i9300_${ver}.zip system/framework/services.jar -d "$dst"
fi
apktool d -f $dst/android.policy.jar $dst/android.policy.jar.out
apktool d -f $dst/services.jar $dst/services.jar.out

# Now for the rmline script


cd $dst

who=`whoami`
tmp_loc=/tmp/rmline_$who

# $2 is the file name with the full absolute path
function rm_line() {
    local action=$1
    local file=$2
    local diff_file=$tmp_loc$file.line

    if [ "$action" == "remove" ]; then
        mv $file $file.original
        more $file.original | sed -e '/^\s*\.line.*$/d' | sed -e 's/\/jumbo//' > $file
        diff $file $file.original > /dev/null || {
                mkdir -p `dirname $diff_file`
                diff -B -c $file $file.original > $diff_file
            }
        rm $file.original
    else
        if [ -f $diff_file ]; then
            patch -f $file -r /dev/null < $diff_file >/dev/null 2>&1
            rm -f $diff_file
        else
            echo "Warning: line info file ($diff_file) does not exist" >&2
        fi
    fi
}

action=remove
if [ "$1" == "-r" ]; then
    action=add
    shift
fi

p=`pwd`
full=`echo $1 | sed -e "s#\(^[^\/]\)#$p/\1#"`
if [ -f "$full" ]; then
    echo $full | grep .smali$ > /dev/null && rm_line $action $full
    exit 0
fi

for file in `find $full -name "*.smali"`
do
    rm_line $action $file
done

# And then we continue..
cd $dst
mkdir -p ${ver}
patch -i $dst/PhoneWindowManager.diff $dst/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager.smali
patch -i $dst/PowerManagerService\$ScreenBrightnessAnimator.diff $dst/services.jar.out/smali/com/android/server/PowerManagerService\$ScreenBrightnessAnimator.smali
apktool b -f $dst/android.policy.jar.out
apktool b -f $dst/services.jar.out

cd $out
mkdir -p ${ver}
 
cp -r -f $dst/android.policy.jar.out/dist/android.policy.jar $out/${ver}
cp -r -f $dst/services.jar.out/dist/services.jar $out/${ver}

rm -r $dst/android.policy.jar.out
rm -r $dst/android.policy.jar
rm -r $dst/services.jar.out
rm -r $dst/services.jar

cd $dst
