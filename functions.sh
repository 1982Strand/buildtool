#!/bin/bash

##### FUNCTIONS #####

###  1. Install frameworks  ###


install_frameworks () {
   
echo ""
echo "[--- Installing frameworks ---]"
echo ""

apktool if $IN/framework-res.apk
apktool if $HOME/if_frameworks/2.apk
apktool if $HOME/if_frameworks/3.apk
apktool if $HOME/if_frameworks/4.apk
apktool if $HOME/if_frameworks/5.apk
apktool if $IN/framework-miui-res.apk
 
}


###  2. Decompile all apks/jars  ###

decompile_apks () {
   
echo ""
echo "[--- Decompiling apks/jars ---]"
echo ""

cat /dev/null > $LOG/decompile_log.txt

cd $HOME/apk_in
for file in *.apk *.jar; do
echo "Decompiling $file" 2>&1 | tee -a $LOG/decompile_log.txt
apktool -q d -f $file $DEC/$file
done
cp -f $HOME/sort.py $DEC
cd $DEC
python sort.py
rm -r sort.py

cd $HOME
 
}


###  3. Add Translations  ###

add_translations () {
   
echo ""
echo "[--- Adding Danish Translations ---]"
echo ""

cd $MAIN

for apk in $(<$HOME/translation_list.txt); do
                if [ -d "$DEC/$apk" ]; then
                cp -r -f "$apk" $DEC;
fi
done

cd $DEVICE

for apk in $(<$HOME/translation_list.txt); do
                if [ -d "$DEC/$apk" ]; then
                cp -r -f "$apk" $DEC;
fi
done

cd $DEC
if [ -d ControlPanel.apk ]
then cp -r -f $MAIN/ControlPanel.apk $DEC
fi
cd $HOME

 
}


###  4. Fix MIUI sources  ###

source_fix () {
   
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
 
}

###  5. Add prnedefined Mods  ###


3way () {
   

#src=~/buildtool/source_roms
#dst=~/buildtool/mods/3way
#out=~/buildtool/mods/out

clear
echo -n "Enter ROM version (x.xx.xx) and press [ENTER]: "
read ver
[[ "$ver" =~ ^[0-9]{1}\.[0-9]{1,2}\.[0-9]{1,2}$ ]] && echo "Source rom is miuiandroid_m0_jb-${ver}.zip" || echo "Invalid"

echo ""
echo "[--- Creating 3-way Reboot ---]"
echo ""

cd $MODS/out
if [ -d ${ver} ]
then
	cd $ver
	if [ -f android.policy.jar ]
	then
	cp -f android.policy.jar $MODS/3way
	else unzip -u -j $SRC/miuiandroid_m0_jb-${ver}.zip system/framework/android.policy.jar -d "$MODS/3way"
	fi
else
	unzip -u -j $src/miuiandroid_m0_jb-${ver}.zip system/framework/android.policy.jar -d "$dst"
fi
apktool d -f $dst/android.policy.jar $dst/android.policy.jar.out
cd $src

#unzip -u -j $src/miuiandroid_m0_jb-${ver}.zip system/framework/android.policy.jar -d "$dst"
#apktool d -f $dst/android.policy.jar $dst/android.policy.jar.out


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
patch -i $dst/MiuiGlobalActions_no_line.diff $dst/android.policy.jar.out/smali/com/android/internal/policy/impl/MiuiGlobalActions.smali
patch -i $dst/MiuiGlobalActions\$SinglePressAction_no_line.diff $dst/android.policy.jar.out/smali/com/android/internal/policy/impl/MiuiGlobalActions\$SinglePressAction.smali
cp -r -f $dst/*.smali $dst/android.policy.jar.out/smali/com/android/internal/policy/impl/
apktool b -f $dst/android.policy.jar.out

cd $out
mkdir -p ${ver}
cp -r -f $dst/android.policy.jar.out/dist/android.policy.jar $out/${ver}
rm -r $dst/android.policy.jar.out
rm -r $dst/android.policy.jar

cd $dst
 
}


###  6. Recompile apks/jars  ###


recompile_apks () {

echo ""
echo "[--- Recompile apks/jars ---]"
echo ""

cat /dev/null > $LOG/recompile_log.txt

cd $DEC
for b in `find * -maxdepth 0 -type d`; do
echo "Recompiling $b" 2>&1 | tee -a $LOG/recompile_log.txt
apktool -q b -f $b 2>&1 | tee -a $LOG/recompile_log.txt
done
for jar in `find *.jar -maxdepth 0 -type d`; do
cp $jar/dist/*.jar $OUT
done

 
}


###  7. Inject resources  ###


function inject_res () {
   
echo ""
echo "[--- Injecting Modified Resources ---]"
echo ""

cat /dev/null > $LOG/inject_log.txt
cd $IN
for apk in *.apk; do
cp -f -r $apk $OUT
echo "Injecting res, resources.arsc and classes.dex for $apk "
7za u -r -mx0 -tzip $OUT/$apk $DEC/$apk/build/apk/resources.arsc 2>&1 | tee -a $LOG/inject_log.txt
7za u -r -mx0 -tzip $OUT/$apk $DEC/$apk/build/apk/classes.dex 2>&1 | tee -a $LOG/inject_log.txt
7za u -r -mx0 -tzip $OUT/$apk $DEC/$apk/build/apk/res 2>&1 | tee -a $LOG/inject_log.txt
done

 
}

###  8. Optimize pngs  ###


#function1() {
   
#do something like decompile app
 
#}


###  9. Zipalign apks  ###


zipalign () {
   
echo ""
echo "[--- Zipaligning apks ---]"
echo ""

cd $OUT

	for a in *.apk; do 
	echo "Zipaligning $a" 
	echo
	zipalign -f 4 $a $a.aligned
                rm $a
                mv $a.aligned $a
	echo
	done
 
}


###  10. Build flashable zip  ###


flashable () {
   

echo ""
echo "[--- Creating flashable zip ---]"
echo ""


echo -n "Enter version (x.xx.xx) and press [ENTER]: "
read ver
[[ "$ver" =~ ^[0-9]{1}\.[0-9]{1,2}\.[0-9]{1,2}$ ]] && echo "Output filename is ${ver}_DA.zip" || echo "Invalid"

cd $FLASH
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
cd $FLASH/system/media/audio
mkdir ringtones
mkdir alarms
mkdir notifications
cd $HOME


for apk in $(<$HOME/translation_list.txt); do cp -r -f "$OUT/$apk" $FLASH/system/app; done

#cp -f $home/mods/3way/${ver}/android.policy.jar $parent/system/framework
#cp -f $home/mods/crt-off/${ver}/android.policy.jar $parent/system/framework
#cp -f $home/mods/crt-off/${ver}/services.jar $parent/system/framework
cp -f $MODS/out/${ver}/*.jar $FLASH/system/framework
mv -f $FLASH/system/app/framework-miui-res.apk $FLASH/system/framework
cp -f $FLASH/template.zip $FLASH/flashable.zip
cp -f -r $FLASH/template/system/media/audio $FLASH/system/media

7za u -tzip $tlock/lockscreen.zip $src/advance
cp -f $tlock/lockscreen.zip $tlock/lockscreen
cp -f $tlock/lockscreen $dst
7za a -tzip $FLASH/flashable.zip $FLASH/system -mx3
mv -f $FLASH/flashable.zip $FLASH/${ver}_DA.zip
rm -r $FLASH/system
cd ~/buildtool
 
}


###  11. decompile single  ###

#function100() {
#   
#do something like decompile app
 
#}


###  12. recompile single  ###


#function176() {
   
#do something like decompile app
 
#}


###  13. fix official sources  ###


#function109() {
   
#do something like decompile app
 
#}


###  14. patch and build official rom  ###


#function1089() {
   
#do something like decompile app
 
#}


###  e. Extract apks from zip  ###


pull () {
   
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

 
}


###  c. Cleaning Options  ####

cleanup_all () {
   
rm -f -r $IN/*
rm -f -r $OUT/*

cd $IN
mkdir decompiled

rm -f -r $MODS/out/*
 
}

