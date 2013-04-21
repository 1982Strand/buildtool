#!/bin/bash

src=~/buildtool/source_roms
dst=~/buildtool/mods/volumeplus
out=~/buildtool/mods/out

clear
echo -n "Enter ROM version (x.xx.xx) and press [ENTER]: "
read ver
[[ "$ver" =~ ^[0-9]{1}\.[0-9]{1,2}\.[0-9]{1,2}$ ]] && echo "Source rom is miuiandroid_m0_jb-${ver}.zip" || echo "Invalid"

echo ""
echo "[--- Activating VolumePlus ---]"
echo ""

cd $out
if [ -d ${ver} ]
then
	cd $ver
	cp -f android.policy.jar $dst;
else
	unzip -u -j $src/miuiandroid_m0_jb-${ver}.zip system/framework/android.policy.jar -d "$dst"
fi
apktool d -f $dst/android.policy.jar $dst/android.policy.jar.out


# Now for the rmline script


cd $dst/android.policy.jar.out/smali

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
patch -i $dst/PhoneWindowManager.diff $dst/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager.smali
apktool b -f $dst/android.policy.jar.out

cd $out
mkdir -p ${ver}
cp -r -f $dst/android.policy.jar.out/dist/android.policy.jar $out/${ver}
rm -r $dst/android.policy.jar.out
rm -r $dst/android.policy.jar

cd $dst
