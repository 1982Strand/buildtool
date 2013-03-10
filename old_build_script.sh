#!/bin/bash

# Goal: Have a working folder with a source rom and work from there.
# process would be: unzip relevant apks, decompile, add translations, recompile and build, sign apks. In the end put the new apks in a lang-pack.zip
# In the future, i'd like to do more clever paths, so i don't write absolute pathnames to the different functions. 
# So that i can "install" my script whereever i want and the functions still work.
#
#
# I'd like to have the script start with a menu, where user can select to:
# 1. select which input zip file to work with (if multiple zip files are present)
# 2. ON/OFF options for: -"Decompile" (default on)
#			 -"Fix sources" part of script (default on)
# 			 -"add translations" (default on)
#			 -"recompile" (default on)
#			 -"Re-sign files" (default on)
#			 -"create flashable zip" (default on)	
# 3. exit


echo "This script is designed to create language packs for patchrom MIUI ICS Desire by Marange"
echo ""
echo "Created by 1982Strand :)"
echo ""

# Make sure we are root
#if [ `id | sed -e 's/(.*//'` != "uid=0" ]; then
#  echo "Sorry, you need super user privileges to run this script."
#  exit 1
#fi

# Unzip apks from source zip into "apk_in" directory
# Needs refining
# Has to pull every apk from the zip, then remove unwanted afterwards. (Or simply just pull the needed ones, perhaps by making a seperate file with a list of the files needed..?)


# Track processing time
TIMES=$SECONDS

rm -r ./apk_in
rm -r ./apk_out

echo "[--- Unzipping apks... ----]"
echo ""
unzip -j -u *.zip *.apk -d ./apk_in

echo ""
echo "[--- Removing unneeded apks ---]"
echo ""

cd /buildtool/apk_in

rm Google*.apk
rm ChromeBookmarksSyncAdapter.apk
rm DefaultContainerService.apk
rm LatinIME.apk
rm MediaProvider.apk
rm PicoTts.apk
rm Provision.apk
rm UserDictionaryProvider.apk
rm Vending.apk
rm VisualizationWallpapers.apk
rm WAPPushManager.apk
rm WeatherProvider.apk
rm SuperMarket.apk
rm LatinImeDictionaryPack.apk
rm SharedStorageBackup.apk
rm Talk.apk
rm Gmail.apk

cd ..

# use apktool 1.4.9

#echo ""
#echo "[--- Using apktool 1.4.9 and MIUI aapt ---]"
#echo ""
#cp ./apktool/1.4.9/apktool.jar /usr/local/bin
#cp ./apktool/1.4.9/aapt /usr/local/bin

# Install frameworks

echo ""
echo "[--- Installing frameworks ---]"
echo ""

apktool if ./apk_in/framework-res.apk
apktool if ./if_frameworks/2.apk
apktool if ./if_frameworks/3.apk
apktool if ./if_frameworks/4.apk
apktool if ./if_frameworks/5.apk
apktool if ./apk_in/framework-miui-res.apk

# Decompile the apks in "apk_in"
# Needs refining
# Want to make the script to save possible errors to a log. (done, but it needs to either autoclear previous logs, or create new. And needs to include timestamp)
# Want the script to run from where ever the working folder is located and just change to "apk_in" dir, so that i don't specify an excact path, which limits its flexibility

echo ""
echo "[--- Decompiling apks ---]"
echo ""

cd /buildtool/apk_in

for file in `dir -d *` ; do
echo "Decompiling $file " # for log: 2>&1 | tee -a /root/buildtool/log/decompile_log.txt
apktool -q d -f $file /root/buildtool/apk_in/decompiled/$file # for log: 2>&1 | tee -a /root/buildtool/log/decompile_log.txt
done
cd /buildtool

# Fix the sources. Ideally, this could be done with an adaptive patching (?), where the script will detect the errors and then correct them.
# Like in ids.xml for Email.apk, if in the future items are added/deleted/changed, the script will still be able to patch it successfully, 
# without manually having to edit the diff patch for it.

echo ""
echo "[--- Fix MIUI sources ---]"
echo ""

echo ""
echo "Fixing Email.apk"
echo ""

patch -i src_fix/Email/ids.diff apk_in/decompiled/Email.apk/res/values/ids.xml
patch -i src_fix/Email/public.diff apk_in/decompiled/Email.apk/res/values/public.xml
patch -i src_fix/Email/sw600dp-styles.diff apk_in/decompiled/Email.apk/res/values-sw600dp/styles.xml
patch -i src_fix/Email/sw800dp-port.diff apk_in/decompiled/Email.apk/res/values-sw800dp-port/styles.xml

echo ""
echo "Fixing framework-miui-res.apk"
echo ""

patch -i src_fix/framework-miui-res/apktool.diff apk_in/decompiled/framework-miui-res.apk/apktool.yml

echo ""
echo "Fixing MiuiCompass.apk"
echo ""

patch -i src_fix/MiuiCompass/apktool.diff apk_in/decompiled/MiuiCompass.apk/apktool.yml

#echo ""
#echo "Fixing Gmail.apk"
#echo ""
#
#patch -i src_fix/Gmail/AndroidManifest.diff apk_in/Gmail/AndroidManifest.xml

echo ""
echo "Fixing Mms.apk"
echo ""

patch -i src_fix/Mms/bools.diff apk_in/decompiled/Mms.apk/res/values/bools.xml


echo ""
echo "Adding Center Clock to MiuiSystemUI.apk"
echo ""

patch -i src_fix/MiuiSystemUI/systemui_status_bar_xml.diff apk_in/decompiled/MiuiSystemUI.apk/res/layout/status_bar.xml

# Add translations.
# In the future, i'd like the script to be able to add translations, but if translation sources contain files which overwrites original files, i.e. in "values",
# the script will ask if i'm sure i want to overwrite. Just to make sure nothing is changed without permision.
# Also, i'd like the script to check wether the destination apk folder exists, so if it doesn't, the files won't be copied over. (to avoid "pathnotexist error from apktool)

echo ""
echo "[--- Adding Danish Translations ---]"
echo ""

cd /buildtool/translations/ma-xml-4.0-danish/device/bravo
cp -r * /buildtool/apk_in/decompiled

cd /buildtool/apk_in/decompiled/framework-res.apk/res
rm -r values-da

cd /buildtool/translations/ma-xml-4.0-danish/main
cp -r * /buildtool/apk_in/decompiled

cd /buildtool
echo ""
echo "[--- Recompile apks ---]"
echo ""

cd /buildtool/apk_in/decompiled
for b in `find * -maxdepth 0 -type d`; do
echo "Recompiling $b" # for log: 2>&1 | tee -a /buildtool/log/recompile_log.txt
apktool -q b -f $b /buildtool/apk_out/$b # for log: 2>&1 | tee -a /buildtool/log/recompile_log.txt
done
cd /buildtool

# Re-sign the apks

echo ""
echo "[--- Re-sign apks ---]"
echo ""
    for apk in `find apk_out/ -name "*.apk"`
    do
        echo "Signing $apk..."
        java -jar ./signing/signapk.jar ./signing/testkey.x509.pem ./signing/testkey.pk8 $apk $apk.signed
        zipalign 4 $apk.signed $apk.signed.aligned
        mv $apk.signed.aligned $apk
        rm $apk.signed
    done

# OBSOLETE! Revert to apktool 1.4.3 and aapt r19

#echo ""
#echo "[--- Reverting to apktool 1.4.3 ---]"
#echo ""
#cp ./apktool/1.4.3/apktool.jar /usr/local/bin
#cp ./apktool/1.4.3/aapt /usr/local/bin

# Create flashable zip
# Would like to make it name the created zip with corresponding version number (taken from the rom zip)-> like 2.8.3_DA.zip and so on..

echo ""
echo "[--- Creating flashable zip ---]"
echo ""

cd /buildtool/flashable
mkdir ./system
cd ./system
mkdir ./app
mkdir ./framework
cd /buildtool

   for C in /buildtool/apk_out/*; 
   do
	cp -f $C /buildtool/flashable/system/app
    done

mv -f /buildtool/flashable/system/app/framework-res.apk /buildtool/flashable/system/framework
mv -f /buildtool/flashable/system/app/framework-miui-res.apk /buildtool/flashable/system/framework
cp -f /buildtool/flashable/template.zip /buildtool/flashable/flashable.zip

7za a -tzip /root/buildtool/flashable/flashable.zip /root/buildtool/flashable/system -mx3

rm -r /buildtool/flashable/system
cd /buildtool

TIMEE=$SECONDS
DIFF=$(echo "$TIMEE-$TIMES" | bc)

printf ""%dh:%dm:%ds"\n" $(($DIFF/3600)) $(($DIFF%3600/60)) $(($DIFF%60))
