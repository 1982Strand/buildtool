#!/bin/bash

##### FUNCTIONS #####

###  1. Install frameworks  ###


install_frameworks() {
   
echo ""
echo "[--- Installing frameworks ---]"
echo ""

apktool if ~/buildtool/apk_in/framework-res.apk
apktool if ~/buildtool/if_frameworks/2.apk
apktool if ~/buildtool/if_frameworks/3.apk
apktool if ~/buildtool/if_frameworks/4.apk
apktool if ~/buildtool/if_frameworks/5.apk
apktool if ~/buildtool/apk_in/framework-miui-res.apk
 
}


###  2. Decompile all apks/jars  ###

decompile_apks() {
   
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

add_translations() {
   
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

function1() {
   
do something like decompile app
 
}

###  5. Add prnedefined Mods  ###


function1() {
   
do something like decompile app
 
}


###  6. Recompile apks/jars  ###


function1() {
   
do something like decompile app
 
}


###  7. Inject resources  ###


function1() {
   
do something like decompile app
 
}

###  8. Optimize pngs  ###


function1() {
   
do something like decompile app
 
}


###  9. Zipalign apks  ###


function1() {
   
do something like decompile app
 
}


###  10. Build flashable zip  ###


function1() {
   
do something like decompile app
 
}


###  11. decompile single  ###

function1() {
   
do something like decompile app
 
}


###  12. recompile single  ###


function1() {
   
do something like decompile app
 
}


###  13. fix official sources  ###


function1() {
   
do something like decompile app
 
}


###  14. patch and build official rom  ###


function1() {
   
do something like decompile app
 
}


###  e. Extract apks from zip  ###


function1() {
   
do something like decompile app
 
}


###  c. Cleaning Options  ####

cleanup_all() {
   
rm -f -r $IN/*
rm -f -r $OUT/*

cd $IN
mkdir decompiled

rm -f -r $MODS/out/*
 
}
