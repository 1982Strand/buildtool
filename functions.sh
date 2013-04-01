#!/bin/bash

##### FUNCTIONS #####


############################################
###                                      ###
###      0. Install apktool/aapt         ###
###                                      ###
############################################

install_apktool () {

echo ""
echo "[--- Using apktool 1.5.2 and patched aapt ---]"
echo ""

sudo cp -f $HJEM/apktool/1.5.2/apktool.jar /usr/local/bin
sudo cp -f $HJEM/apktool/1.5.2/aapt /usr/local/bin
sudo cp -f $HJEM/apktool/1.5.2/apktool /usr/local/bin

}

############################################
###                                      ###
###      1. Install frameworks           ###
###                                      ###
############################################


install_frameworks () {
   
echo ""
echo "[--- Installing frameworks ---]"
echo ""

apktool if $IN/framework-res.apk
apktool if $HJEM/if_frameworks/2.apk
apktool if $HJEM/if_frameworks/3.apk
apktool if $HJEM/if_frameworks/4.apk
apktool if $HJEM/if_frameworks/5.apk
apktool if $IN/framework-miui-res.apk
 
}


############################################
###                                      ###
###      2. Decompile all apks/jars      ###
###                                      ###
############################################

## Thanks to Soupmagnet (xdadevelopers.com) for the improved code!

decompile_apks () {
   
echo ""
echo "[--- Decompiling apks/jars ---]"
echo ""

cat /dev/null > $LOG/decompile_log.txt

cd $IN
if [ "$(ls -1 | grep -e '.\+\.apk$' -e '.\+\.jar$' | wc -l)" -gt 0 ]; then
    for file in *; do
        echo "Decompiling $file" 2>&1 | tee -a $LOG/decompile_log.txt
        apktool -q d -f $file $DEC/$file
    done
    cp -f $HJEM/sort.py $DEC
    cd $DEC
    python sort.py
    rm -r sort.py
else
    echo ""
    echo "No apks/jars found to decompile.."
    echo ""
fi

}


############################################
###                                      ###
###      3. Add translations             ###
###                                      ###
############################################

add_translations () {
   
echo ""
echo "[--- Adding Danish Translations ---]"
echo ""

cd $MAIN

for apk in $(<$HJEM/translation_list.txt); do
                if [ -d "$DEC/$apk" ]; then
                cp -rf "$apk" $DEC;
                fi
done

cd $DEVICE

if [ -d m0 ]
then
    if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then
        for apk in $(<$HJEM/translation_list.txt); do
            if [ -d "$DEC/$apk" ]; then
            cp -rf "$apk" $DEC; > /dev/null 2>&1
            fi
        done
    fi
fi

cd $DEC
if [ -d ControlPanel.apk ]
then cp -r -f $MAIN/ControlPanel.apk $DEC
fi
cd $HJEM

 
}


############################################
###                                      ###
###      4. Fix MIUI sources             ###
###                                      ###
############################################

source_fix () {
   
echo ""
echo "[--- Fix MIUI sources ---]"
echo ""

echo ""
echo "...Fixing framework-miui-res.apk"
echo ""


grep -q -e '<item>da_DK</item>' $DEC/framework-miui-res.apk/res/values/arrays.xml || sed -i '/<item>zh_TW<\/item>/a \
        <item>da_DK<\/item>' $DEC/framework-miui-res.apk/res/values/arrays.xml


sed -i '/  - 1/a \
  - 2\
  - 3\
  - 4\
  - 5
' $DEC/framework-miui-res.apk/apktool.yml

#echo ""
#echo "...Fixing MiuiCompass.apk"
#echo ""
#
#sed -i '/  - 1/a \
#  - 6\
#' $DEC/framework-miui-res.apk/apktool.yml

echo ""
echo "...Fixing Browser.apk (arrays.xml)"
echo ""

sed -i s/'\&amp\;amp\;'/'\&amp\;'/g $DEC/Browser.apk/res/values/arrays.xml
sed -i s/'\&amp\;amp\;amp\;'/'\&amp\;'/g $DEC/Browser.apk/res/values/arrays.xml


if [[ -f $DEC/Browser.apk/smali/com/android/browser/MiuiSuggestionsAdapter.smali ]]
then

echo ""
echo "...Fixing Browser.apk (smali)"
echo ""

sed -i '/const-string v2, "baidu"/c \
const-string v2, "google"' $DEC/Browser.apk/smali/com/android/browser/MiuiSuggestionsAdapter.smali

fi


}

############################################
###                                      ###
###      5. Add predefined mods          ###
###                                      ###
############################################

mods () {
   
clear

while [ answer != "0" ] 
do
clear
echo "|----------------------------------------------------------------|"
echo "| .___  ___.  __   __    __   __                  By 1982Strand  |"
echo "| |   \/   | |  | |  |  |  | |  |                                |"
echo "| |  \  /  | |  | |  |  |  | |  |                                |"       
echo "| |  |\/|  | |  | |  |  |  | |  |                                |"
echo "| |  |  |  | |  | |  '--'  | |  |                                |"
echo "| |__|  |__| |__|  \______/  |__| Building script                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                        MODS SECTION                            |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "| 1.  MIUI Center Clock                                          |"
echo "| 2.  MIUI Emoji  tabs       - ..But still no emoji :(           |"
echo "| 3.  MIUI 3-Way Reboot                                          |"
echo "| 4.  MIUI CRT-OFF                                               |"
echo "| 5.  Stock Center Clock (From XXELLA)                           |"
echo "| 6.  Stock Transparent Statusbar                                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|x - Back to Main  Menu                                          |"
echo "|----------------------------------------------------------------|"
printf %s " Select an Option: "
read -p " " answer
    case $answer in
       1) clear
       center_clock
       ;;
       2) clear
       mms
       ;;
       3) clear
       3way
       ;;
       4) clear
       crt_off
       ;;
       5) clear
       stock_centerclock
       ;;
       6) clear
       stock_transparent_statusbar
       ;;
       8) clear
       crt-off_official
       ;;
       x) clear
       . $HJEM/build
       ;;
       *) echo ""
          echo "invalid choice of mods"
       ;;
   esac
  break
done
 
}


###  Add center clock  ###

center_clock () {
   

echo ""
echo "Adding Center Clock to MiuiSystemUI.apk"
echo ""

patch -i $MODS/centerclock/status_bar.diff $DEC/MiuiSystemUI.apk/res/layout/status_bar.xml


}

###  Add emoji tab to mms  ###

mms () {
   
echo ""
echo "[--- Activating Emoji in Mms.apk ---]"
echo ""

patch -i $MODS/Mms/bools.diff $DEC/Mms.apk/res/values/bools.xml
 
}



###  Add 3way reboot option  ###

3way () {

shopt -s failglob
echo "[--- Choose rom zip to extract from, or x to exit ---]"
echo ""
echo ""

select zip in $SRC/*.zip
do 
    [[ $REPLY == x ]] && . $HJEM/build
    [[ -z $zip ]] && echo "Invalid choice for 3way mod" && continue
    echo
    ver=$(echo $zip| sed -E 's/.*([0-9]\.[0-9]{1,2}\.[0-9]{1,2}).*/\1/') # create version number ($ver) from filename in $zip

    if [ -d $MODS/out/$ver ]
    then
        cd $MODS/out/$ver
        if [ -f android.policy.jar ]
        then
        cp -f $MODS/out/$ver/android.policy.jar $MODS/3way
        else unzip -u -j $zip system/framework/android.policy.jar -d "$MODS/3way"
        fi
    else
        mkdir -p "$MODS/out/$ver"
        unzip -u -j $zip system/framework/android.policy.jar -d "$MODS/3way"
    fi
apktool d -f $MODS/3way/android.policy.jar $MODS/3way/android.policy.jar.out
cd $MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl

    tmp=`grep -l 'invoke-static {v0, v1, v2}, Lcom/android/internal/app/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V' *.smali`;
    tmp=`echo $tmp | sed 's/MiuiGlobalActions$\(.*\)*.smali/\1/g'`;
    tmp=`echo $tmp | sed 's/[^ ]* //'`;
    sed -i "s/MiuiGlobalActions\$$tmp/MiuiGlobalActions\$222/g" "$MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl/MiuiGlobalActions.smali"
    
    cp -arf $MODS/3way/*.smali $MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl
                        
sed -i '/# instance fields/i \
# static fields\
.field protected static rebootMode:I\
\
.field protected static final rebootOptions:[Ljava/lang/String;\
' $MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl/MiuiGlobalActions\$SinglePressAction.smali;

sed -i '/.method protected constructor <init>(II)V/i\
.method static constructor <clinit>()V\
    .registers 3\
\
    const/4 v0, 0x3\
\
    new-array v0, v0, [Ljava/lang/String;\
\
    const/4 v1, 0x0\
\
    const-string v2, "Normal"\
\
    aput-object v2, v0, v1\
\
    const/4 v1, 0x1\
\
    const-string v2, "Recovery"\
\
    aput-object v2, v0, v1\
\
    const/4 v1, 0x2\
\
    const-string v2, "Bootloader"\
\
    aput-object v2, v0, v1\
\
    sput-object v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->rebootOptions:[Ljava/lang/String;\
\
    return-void \
.end method\
' $MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl/MiuiGlobalActions\$SinglePressAction.smali;

cd $MODS/3way;
apktool b android.policy.jar.out
   
   if [ -f "$MODS/3way/android.policy.jar.out/build/apk/classes.dex" ]; then
   
      cd $MODS/3way/android.policy.jar.out/build/apk/
      
      7za u -mx0 -tzip -r "$MODS/3way/android.policy.jar" "classes.dex"  > /dev/null
      cp -rf $MODS/3way/android.policy.jar $MODS/out/$ver
      echo ""
      echo "[--- 3way Reboot Mod Succesful! ---]"
   else
      echo ""
      echo "[--- 3way Reboot Mod Failed! ---]";
   fi
rm -rf $MODS/3way/android.policy.jar.out
rm -rf $MODS/3way/android.policy.jar
break
done   
 
}


###  ADD crt-off effect  ###

crt_off () {

shopt -s failglob
echo "[--- Choose rom zip to extract from, or x to exit ---]"
echo ""
echo ""

select zip in $SRC/*.zip
do 
    [[ $REPLY == x ]] && . $HJEM/build
    [[ -z $zip ]] && echo "Invalid choice for CRT-off mod" && continue
    echo
    ver=$(echo $zip| sed -E 's/.*([0-9]\.[0-9]{1,2}\.[0-9]{1,2}).*/\1/') # create version number ($ver) from filename in $zip

    if [ -d $MODS/out/$ver ]
    then
        cd $MODS/out/$ver
        if [ -f android.policy.jar ]
        then
        cp -f $MODS/out/$ver/android.policy.jar $MODS/crt-off
        else unzip -u -j $zip system/framework/android.policy.jar -d "$MODS/crt-off"
        fi
                if [ -f services.jar ]
                then
                cp -f $MODS/out/$ver/services.jar $MODS/crt-off
                else unzip -u -j $zip system/framework/services.jar -d "$MODS/crt-off"
                fi

    else
        mkdir -p "$MODS/out/$ver"
        unzip -u -j $zip system/framework/android.policy.jar -d "$MODS/crt-off"
        unzip -u -j $zip system/services.jar -d "$MODS/crt-off"
    fi

apktool d -f $MODS/crt-off/android.policy.jar $MODS/crt-off/android.policy.jar.out
apktool d -f $MODS/crt-off/services.jar $MODS/crt-off/services.jar.out

cd $MODS/crt-off/android.policy.jar.out
remove_line
cd $MODS/crt-off/services.jar.out
remove_line

patch -i $MODS/crt-off/PhoneWindowManager.diff $MODS/crt-off/android.policy.jar.out/smali/com/android/internal/policy/impl/PhoneWindowManager.smali
patch -i $MODS/crt-off/PowerManagerService\$ScreenBrightnessAnimator.diff $MODS/crt-off/services.jar.out/smali/com/android/server/PowerManagerService\$ScreenBrightnessAnimator.smali
apktool b -f $MODS/crt-off/android.policy.jar.out
apktool b -f $MODS/crt-off/services.jar.out

cd $MODS/crt-off;
   
   if [ -f "$MODS/crt-off/android.policy.jar.out/build/apk/classes.dex" ]; then
   
      cd $MODS/crt-off/android.policy.jar.out/build/apk/
      
      7za u -mx0 -tzip -r "$MODS/crt-off/android.policy.jar" "classes.dex"  > /dev/null
      cp -rf $MODS/crt-off/android.policy.jar $MODS/out/$ver
      echo ""
      echo "[--- patching android.policy.jar completed! ---]"
   else
      echo ""
      echo "[--- patching android.policy.jar failed! ---]";
   fi
            if [ -f "$MODS/crt-off/services.jar.out/build/apk/classes.dex" ]; then
   
            cd $MODS/crt-off/services.jar.out/build/apk/
      
            7za u -mx0 -tzip -r "$MODS/crt-off/services.jar" "classes.dex"  > /dev/null
            cp -rf $MODS/crt-off/services.jar $MODS/out/$ver
            echo ""
            echo "[--- patching services.jar completed! ---]"
            else
            echo ""
            echo "[--- patching services.jar failed! ---]";
            fi
      

rm -rf $MODS/crt-off/android.policy.jar.out
rm -rf $MODS/crt-off/android.policy.jar
rm -rf $MODS/crt-off/services.jar.out
rm -rf $MODS/crt-off/services.jar

break
done   
 
}



### Add center clock to stock rom ###

stock_centerclock () {
   
echo ""
echo "Adding Center Clock to Stock SystemUI.apk"
echo ""

patch -i $MODS/stock_centerclock/tw_status_bar.diff $DEC/SystemUI.apk/res/layout/tw_status_bar.xml
 
}


### Stock transparent statusbar  ###

stock_transparent_statusbar () {
   
echo ""
echo "Adding Transparent Statusbar to Stock SystemUI.apk"
echo ""

patch -i $MODS/stock_transparent_statusbar/tw_super_status_bar.diff $DEC/SystemUI.apk/res/layout/tw_super_status_bar.xml
patch -i $MODS/stock_transparent_statusbar/drawables.diff $DEC/SystemUI.apk/res/values/drawables.xml
 
}

############################################
###                                      ###
###      6. Recompile all apks/jars      ###
###                                      ###
############################################


recompile_apks () {

echo ""
echo "[--- Recompile apks/jars ---]"
echo ""

cat /dev/null > $LOG/recompile_log.txt

cd $DEC
if [ "$(ls -1 | grep -e '.\+\.apk$' -e '.\+\.jar$' | wc -l)" -gt 0 ]; then

    for b in *.apk *.jar; do
    echo "Recompiling $b" 2>&1 | tee -a $LOG/recompile_log.txt
    apktool -q b -f $b 2>&1 | tee -a $LOG/recompile_log.txt
    
        if [ -f "$IN/$b" ]
        then cp -f $IN/$b $OUT
        fi
       
    done
else
    echo ""
    echo "No apks/jars found to recompile.."
    echo ""
fi

 
}

############################################
###                                      ###
###      7. Inject resources             ###
###                                      ###
############################################


inject_res () {
   
echo ""
echo "[--- Injecting Modified Resources ---]"
echo ""

cat /dev/null > $LOG/inject_log.txt
cd $OUT

if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then

    for apk in *.apk; do
        echo "Injecting res, resources.arsc and classes.dex for $apk " 2>&1 | tee -a $LOG/inject_log.txt
        7za u -r -mx0 -tzip $OUT/$apk $DEC/$apk/build/apk/resources.arsc 2>&1 | tee -a $LOG/inject_log.txt
        7za u -r -mx0 -tzip $OUT/$apk $DEC/$apk/build/apk/classes.dex 2>&1 | tee -a $LOG/inject_log.txt
        7za u -r -mx0 -tzip $OUT/$apk $DEC/$apk/build/apk/res 2>&1 | tee -a $LOG/inject_log.txt
    done
else
    echo ""
    echo "No recompiled files to process.."
    echo ""
fi
 
}



############################################
###                                      ###
###      8. Optimize PNGs                ###
###                                      ###
############################################


opt_png () {
   
# Png Optimization
# Author: Tommy Nguyen [tommytomatoe]
# Version: 1.0.2
# Date: August 23, 2011
# Contact: tommytomatoe@gmail.com

# Modified by Dan Strand [1982Strand]



##functions

enter()
{       echo
        echo "Please press [enter] to continue";
        read -s -n 1 key
        if [[ $key = "" ]]; then 
                echo
                clear
        fi
}

png_out ()
{       clear
echo "Warning. Pngout has been known to render the png 'un-editible'"
echo "Even so, it is arguably the best at optimizing pngs"
echo "Proceed only after you've made backups of your png/apk"
echo
cd $OUT
echo "These apks are about to optimized with PNGout."
echo
cd $OUT
ls *.apk
echo

echo
if ! [[ -s tmp ]] ; then
        mkdir tmp
fi
for a in *.apk ; do
        cd $OUT
        echo "PNGS in $a will be optimized with PNGout"
        unzip -o $a -d ${a/.apk}-png
        cd ${a/.apk}-png
        find . -iname "*.png" | while read PNG 
                do 
                if [ `echo "$PNG" | grep -c "\.9\.png$"` -eq 0 ] ; then 
                        $p/pngout "$PNG"  
                fi 
                done
        zip -r $OUT/tmp/$a *
        rm -rf $OUT/${a/.apk}-png
        echo
done
echo "New apks might need to be resigned if third-party app"
cd $OUT/tmp
for a in *.apk ; do
mv -f $a $OUT
done
rm -r $OUT/tmp
}

png_crush ()
{       clear
echo
echo "These apks are about to optimized with pngCrush."
echo
cd $OUT
ls *.apk
echo
echo
if ! [[ -s tmp ]] ; then
        mkdir tmp
fi
for a in *.apk ; do
        cd $OUT
        echo "PNGS in $a will be optimized with pngCrush"
        unzip -o $a -d ${a/.apk}-png
        cd ${a/.apk}-png
        find . -iname "*.png" | while read PNG 
                do 
                if [ `echo "$PNG" | grep -c "\.9\.png$"` -eq 0 ] ; then 
                        $p/pngcrush "$PNG"  
                fi 
                done
        zip -r $OUT/tmp/$a *
        rm -rf $OUT/${a/.apk}-png
        echo
done
echo "New apks might need to be resigned if third-party app"
cd $OUT/tmp
for a in *.apk ; do
mv -f $a $OUT
done
rm -r $OUT/tmp
}

opti_png ()
{       clear
echo
echo "These apks are about to optimized with OptiPNG."
echo
cd $OUT
ls *.apk
echo
echo
if ! [[ -s tmp ]] ; then
        mkdir tmp
fi
for a in *.apk ; do
        cd $OUT
        echo "PNGS in $a will be optimized with OptiPNG"
        unzip -o $a -d ${a/.apk}-png
        cd ${a/.apk}-png
        find . -iname "*.png" | while read PNG 
                do 
                if [ `echo "$PNG" | grep -c "\.9\.png$"` -eq 0 ] ; then 
                        $p/optipng "$PNG"  
                fi 
                done
        zip -r $OUT/tmp/$a *
        rm -rf $OUT/${a/.apk}-png
        echo
done
echo "New apks might need to be resigned if third-party app"
cd $OUT/tmp
for a in *.apk ; do
mv -f $a $OUT
done
rm -r $OUT/tmp
}

adv_png ()
{       clear
echo
echo "These apks are about to optimized with AdvPNG."
echo
cd $OUT
ls *.apk
echo
echo
if ! [[ -s tmp ]] ; then
        mkdir tmp
fi
for a in *.apk ; do
        cd $OUT
        echo "PNGS in $a will be optimized with AdvPNG"
        unzip -o $a -d ${a/.apk}-png
        cd ${a/.apk}-png
        find . -iname "*.png" | while read PNG 
                do 
                if [ `echo "$PNG" | grep -c "\.9\.png$"` -eq 0 ] ; then 
                        $p/advpng "$PNG"  
                fi 
                done
        zip -r $OUT/tmp/$a *
        rm -rf $OUT/${a/.apk}-png
        echo
done
echo "New apks might need to be resigned if third-party app"
cd $OUT/tmp
for a in *.apk ; do
mv -f $a $OUT
done
rm -r $OUT/tmp
}

apk_opt_script () 
{
clear
p=~/buildtool/png_tool
echo "PNG Optimzers"
echo
echo "Please be aware that this process could take some time"
echo "New apks might need to be resigned if third-party app"
echo 
echo "|---------------------------------------------|"
echo "| 1.  pngout   - best, but SLOW! read Warning |"
echo "|              - version 07.22.2011           |"
echo "|                                             |"
echo "| 2.  pngcrush - used by cyanogenmod          |"
echo "|              - v1.7.16 [compiled 08.23.2011]|"
echo "|                                             |"
echo "| 3.  optipng  - fastest pngopt method        |"
echo "|              - v0.6.5 [compiled 08.23.2011] |"
echo "|                                             |"
echo "| 4.  advpng   - opts with the 7-zip method   |"
echo "|              - v1.15 [compiled 08.23.2011]  |"
echo "|                                             |"
echo "|---------------------------------------------|"
echo "| x.  Return to main menu                     |"
echo "|---------------------------------------------|"
echo "|---------------------------------------------|"
printf %s " Select a png opt tool: "
read num
case $num in
 1) png_out;;
 2) png_crush;;
 3) opti_png;;
 4) adv_png;;
 x) clear; . $HJEM/build;;
 *) echo; echo "$num is not a valid option"; enter;
esac
}

while :
do
        apk_opt_script
done

 
}


############################################
###                                      ###
###      9. Zipalign apks                ###
###                                      ###
############################################


zip_align () {
   
echo ""
echo "[--- Zipaligning apks ---]"
echo ""

cd $OUT
if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then
        for a in *.apk; do 
        echo "Zipaligning $a" 
        echo
        zipalign -f 4 $a $a.aligned
                rm $a
                mv $a.aligned $a
        echo
        done
else
    echo ""
    echo "No apks found to zipalign.."
    echo ""
fi 
}



############################################
###                                      ###
###      10. Signing options             ###
###                                      ###
############################################

sign_menu () {
   
clear

while [ answer != "0" ] 
do
clear
echo "|----------------------------------------------------------------|"
echo "| .___  ___.  __   __    __   __                  By 1982Strand  |"
echo "| |   \/   | |  | |  |  |  | |  |                                |"
echo "| |  \  /  | |  | |  |  |  | |  |                                |"       
echo "| |  |\/|  | |  | |  |  |  | |  |                                |"
echo "| |  |  |  | |  | |  '--'  | |  |                                |"
echo "| |__|  |__| |__|  \______/  |__| Building script                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                        Signing Options                         |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "| 1.  Sign all apks (in apk_out)                                 |"
echo "| 2.  Sign single apk                                            |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|x - Return to main menu                                         |"
echo "|----------------------------------------------------------------|"
printf %s " Select an Option: "
read -p " " answer
    case $answer in
       1) clear
       sign_all
       ;;
       2) clear
       sign_single
       ;;
       3) clear
       sign_zip
       ;;
       x) clear
       . $HJEM/build
       ;;
       *) echo ""
          echo "invalid choice of signing"
       ;;       
    esac
    break
done

}

### Sign all apks

sign_all () {


echo ""
echo "[--- Sign all apks (Test Keys) ---]"
echo ""
    
cd $OUT
if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then
    
    for apk in *.apk
    do
        echo "Signing $apk..." 2>&1 | tee -a $LOG/signing_log.txt
        java -jar $SIGN/signapk.jar $SIGN/testkey.x509.pem $SIGN/testkey.pk8 $apk $apk.signed
        zipalign 4 $apk.signed $apk.signed.aligned
        mv $apk.signed.aligned $apk
        rm $apk.signed
    done
else
    echo ""
    echo "No files found to sign.."
    echo ""

fi
}


### Sign single apk

sign_single () {

shopt -s failglob
echo "[--- Choose apk number, or x to exit ---]"
echo ""
echo ""


cd $OUT

if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then

    select apk in *.apk
    do
    cat /dev/null > $LOG/signing_log.txt
    [[ $REPLY == x ]] && . $HJEM/build
    [[ -z $apk ]] && echo "Invalid choice for single signing" && continue
    echo
    echo "Signing $apk" 2>&1 | tee -a $LOG/signing_log.txt
    java -jar $SIGN/signapk.jar $SIGN/testkey.x509.pem $SIGN/testkey.pk8 $apk $apk.signed
    zipalign 4 $apk.signed $apk.signed.aligned
    mv $apk.signed.aligned $apk
    rm $apk.signed
    break
    done
else
    echo ""
    echo "No files found to sign.."
    echo ""

fi 

}


############################################
###                                      ###
###      11. Build flashable zip         ###
###                                      ###
############################################



# Vælg rom zip at arbejde med
# Brug template som skabelon til flashable, ting skal heri hvis de skal med i pakken
# Udpak låseskærm fra rom zip til template, indsæt oversættelse, pak igen

flashable () {
   

echo ""
echo "[--- Creating flashable zip ---]"
echo ""


shopt -s failglob
echo "[--- Choose rom zip to make flashable for, or x to exit ---]"
echo ""
echo ""

select zip in $SRC/*.zip
do 
    [[ $REPLY == x ]] && . $HJEM/build
    [[ -z $zip ]] && echo "Invalid choice for flashable zip" && continue
    echo
    ver=$(echo $zip| sed -E 's/.*([0-9]\.[0-9]{1,2}\.[0-9]{1,2}).*/\1/') # create version number ($ver) from filename in $zip

cd $FLASH

# Tilføj oversættelse til låseskærm

    unzip -u -j $zip system/media/theme/default/lockscreen -d "$FLASH/template/system/media/theme/default" > /dev/null

    cd $FLASH/template/system/media/theme/default
    mv -f lockscreen lockscreen.zip

    7za u -mx0 -tzip -r lockscreen.zip "$XTRA/lockscreen/advance"  > /dev/null
    mv -f lockscreen.zip lockscreen

# Oversæt clock widget

# system/media/theme/.data/content/clock_2x4/simple_clock/images_da
# system/media/theme/.data/content/clock_2x4/clock/strings/strings_da.xml

    unzip -o $zip system/media/theme/.data/content/clock_2x4/\* -d $FLASH/template
    cd $FLASH/template/system/media/theme/.data/content/clock_2x4
    
    mv -f clock.mrc clock.zip
    7za u -mx0 -r clock.zip "$XTRA/clock/strings"
    mv -f clock.zip clock.mrc
    
    mv -f simple_clock.mrc simple_clock.zip
    7za u -mx0 -r simple_clock.zip "$XTRA/simple_clock/images_da"
    mv -f simple_clock.zip simple_clock.mrc
    
#   7za u -mx0 -r clock.mrc "$XTRA/clock/strings/strings_da.xml"
    
# Kopier apker over
    
    cd $OUT
    if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then #if there are more than 0 results of *.apk...
        for apk in $OUT/*.apk; do
        cp -rf $apk $FLASH/template/system/app;
        done
    else
        echo ""
        echo "No apks found to import..."
        echo ""
    fi
    
    cd $FLASH/template/system/app
        if [[ -e framework-miui-res.apk ]]
        then mv -f framework-miui-res.apk $FLASH/template/system/framework > /dev/null
        fi
        
        if [[ -e framework-res.apk ]]
        then mv -f framework-res.apk $FLASH/template/system/framework > /dev/null
        fi
        
# Patch tema titler (officiel rom)

echo ""
echo "[--- Patch Miui Theme titles ---]"
echo ""

unzip -o $zip system/media/theme/.data/meta/\* -d $FLASH/template

cd $FLASH/template
find -name '*.mrm' -exec sed -i 's/默认/Standard/g' {} \;

find -name '*.mrm' -exec sed -i 's/翻页时钟1/Flip Ur/g' {} \;

find -name '*.mrm' -exec sed -i 's/动态指针时钟2/Simpelt Ur/g' {} \;

find -name '*.mrm' -exec sed -i 's/简约时钟1/Simpelt Ur/g' {} \;

find -name '*.mrm' -exec sed -i 's/简洁时钟(小右)/Simpelt Ur (lille)/g' {} \;
                                   
find -name '*.mrm' -exec sed -i 's/简洁时钟(大右)/Simpelt Ur (stor)/g' {} \;

find -name '*.mrm' -exec sed -i 's/Standard相框4x4/Fotoramme 4x4/g' {} \;

find -name '*.mrm' -exec sed -i 's/Standard相框2x4/Fotoramme 2x4/g' {} \;

find -name '*.mrm' -exec sed -i 's/Standard相框2x2/Fotoramme 2x2/g' {} \;

echo ""
echo "Patching Build.prop..."
echo ""

unzip -u -j $zip system/build.prop -d $FLASH/template/system

cd $FLASH/template/system
sed -i 's/ro.product.locale.language=zh/ro.product.locale.language=da/g' build.prop
sed -i 's/ro.product.locale.region=CN/ro.product.locale.region=DK/g' build.prop

    
# Kopier eventuelle mods over
    echo ""
    echo "[--- Checking if MODS exist ---]"
    echo ""
    if [ -d $MODS/out/$ver ]
    then
            cd $MODS/out/$ver
            if [ -f android.policy.jar ]
            then
                echo ""
                echo "android.policy.jar found..."
                cp -f android.policy.jar $FLASH/template/system/framework
            else echo ""
                 echo "No android.policy.jar found, skipping copy.."; break
            fi
            if [ -f services.jar ]
            then
                echo ""
                echo "services.jar found..."
                cp -f services.jar $FLASH/template/system/framework
            else echo ""
                 echo "No services.jar found, skipping copy"; break             
            fi
    else
            echo ""
            echo "[--- No modded jars found ---]"; break
    fi
    
    
# Pak filerne og navngiv efter version, ryd op, løkke afsluttet
done
    cp -f $FLASH/template.zip $FLASH/flashable.zip
    7za a -tzip $FLASH/flashable.zip $FLASH/template/system -mx3 > /dev/null
    mv -f $FLASH/flashable.zip $FLASH/"$ver"_DA.zip
    echo ""
    echo "[--- Done! Output zip is: "$ver"_DA.zip"
    
    cd $FLASH/template/system
    for apk in `find -name \*.apk -type f`
    do rm -rf $apk
    done
    
    if [[ -e build.prop ]]
    then rm -f build.prop
    fi

    cd $FLASH/template/system/media/theme/default
    if [[ -e lockscreen ]]
    then rm -f lockscreen
    fi
    
    cd $FLASH/template/system/media/theme
    if [[ -e .data ]]
    then rm -rf .data
    fi
}



############################################
###                                      ###
###      12. decompile singke apk/jar    ###
###                                      ###
############################################

decompile_single () {
  
shopt -s failglob
echo "[--- Choose apk number, or x to exit ---]"
echo ""
echo ""


cd $IN
list=$(find * ! -name 'decompiled' -prune | grep -v '.gitignore' | awk 'FNR>1') 

if [ "$(echo $exclude | wc -l)" -gt 0 ]; then

    select file in $list
    do
    cat /dev/null > $LOG/decompile_log.txt
    [[ $REPLY == x ]] && . $HJEM/build
    [[ -z $file ]] && echo "Invalid choice for single decompiling" && continue
    echo
    echo "Decompiling $file" 2>&1 | tee -a $LOG/decompile_log.txt
    apktool d -f "$file" $DEC/$file
    cp -f $HJEM/sort.py $DEC/$file
    python $DEC/$file/sort.py
    rm -r $DEC/$file/sort.py
    break
    done
else
    echo ""
    echo "No apks/jars found to decompile.."
    echo ""
fi


}



############################################
###                                      ###
###      13. recompile singke apk/jar    ###
###                                      ###
############################################


recompile_single () {
   
shopt -s failglob
echo "[--- Choose apk number, or x to exit ---]"
echo ""
echo ""


cd $DEC

if [ "$(ls -1 | grep -e '.\+\.apk$' -e '.\+\.jar$' | wc -l)" -gt 0 ]; then

    select file in *
    do
    cat /dev/null > $LOG/recompile_log.txt
    [[ $REPLY == x ]] && . $HJEM/build
    [[ -z $file ]] && echo "Invalid choice for single recompiling" && continue
    echo
    echo "Recompiling $file" 2>&1 | tee -a $LOG/recompile_log.txt
    apktool b -f "$file"
        if [ -f "$IN/$file" ]
        then cp -f $IN/$file $OUT
        fi
    break
    done
else
    echo ""
    echo "No files found.."
    echo ""
fi 
}


############################################
###                                      ###
###      e. Extract apks from zip        ###
###                                      ###
############################################


pull_apks () {


shopt -s failglob
echo "[--- Choose rom zip to extract from, or x to exit ---]"
echo ""
echo ""

cd $SRC
if [ "$(ls -1 | grep '.\+\.zip$' | wc -l)" -gt 0 ]; then

    select zip in $SRC/*.zip
    do
        [[ $REPLY == x ]] && . $HJEM/build
        [[ -z $zip ]] && echo "Invalid choice" && continue
        echo
            for apk in $(<$HJEM/translation_list.txt); do 
            unzip -j -o -q $zip system/app/$apk -d $IN >& /dev/null;
            done
        unzip -j -o -q $zip system/framework/framework-res.apk -d $IN >& /dev/null;
        unzip -j -o -q $zip system/framework/framework-miui-res.apk -d $IN >& /dev/null;
    break
    done
else
    echo ""
    echo "No zip files found.."
    echo ""
fi
#zip=dummy
 
}

############################################
###                                      ###
###      c. Cleaning options             ###
###                                      ###
############################################

clean_menu () {
   
clear

while [ answer != "0" ] 
do
clear
echo "|----------------------------------------------------------------|"
echo "| .___  ___.  __   __    __   __                  By 1982Strand  |"
echo "| |   \/   | |  | |  |  |  | |  |                                |"
echo "| |  \  /  | |  | |  |  |  | |  |                                |"       
echo "| |  |\/|  | |  | |  |  |  | |  |                                |"
echo "| |  |  |  | |  | |  '--'  | |  |                                |"
echo "| |__|  |__| |__|  \______/  |__| Building script                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                        Cleaning Options                        |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "| 1.  Clean all folders                                          |"
echo "| 2.  Clean all but apks in apk_in folder                        |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|x - Return to main menu                                         |"
echo "|----------------------------------------------------------------|"
printf %s " Select an Option: "
read -p " " answer
    case $answer in
       1) clear
       cleanup_all
       ;;
       2) clear
       cleanup_not_apk
       ;;
       x) clear
       . $HJEM/build
       ;;
       *) echo ""
          echo "invalid choice of cleaning"
       ;;       
    esac
    break
done

}

###  clean all  ###


cleanup_all () {


exclude=$(find . ! -name 'decompiled' | grep -v '.gitignore' | awk 'FNR>1') 

    #This is the nested function that we will call to for several directories
    rm_files () {
    (IFS='
    ' 
    echo "$exclude" | while read i; do
        rm $i
    done)
    }


cd $IN
if [ "$(echo $exclude | wc -l)" -gt 0 ]; then
    rm_files
echo "Deleted files from apk_in.."
else 
    echo "No files found in apk_in.." || break
fi

cd $DEC
if [ "$(echo $exclude | wc -l)" -gt 0 ]; then
    rm_files
echo "Deleted files from decompiled.."
else 
    echo "No files found in decompiled.." || break
fi

cd $OUT
if [ "$(echo $exclude | wc -l)" -gt 0 ]; then
    rm_files
echo "Deleted files from apk_out.."
else 
    echo "No files found in apk_out.." || break
fi

cd $MODS/out
if [ "$(echo $exclude | wc -l)" -gt 0 ]; then
    rm_files
    echo "Deleted files from mods folder.."
    else
       echo "No files found in MODS folder.." || break
fi



cd $FLASH
if [ "$(find . -name *_DA.zip | wc -l)" -gt 0 ]; then
    for $i in $(find . -name *_DA.zip); do
        rm $i
    done
    echo "Present zip files deleted"
else
    echo "No zip files found"
fi

}

###  clean all but apks  ####


cleanup_not_apk () {
   
cd $DEC
for i in * 
do
    if test -d "$i" 
    then rm -rf "$i"
    echo "Deleted folders in decompiled.."
    else
       echo "No decompile folders found.." || break
    fi
done


cd $OUT
if [ "$(ls -1 | grep -e '.\+\.apk$' -e '.\+\.jar$' | wc -l)" -gt 0 ]; then
    for i in *.apk *.jar; do
    rm -f $i
    done
echo "Deleted apks/jars from apk_out.."
else 
    echo "No apk/jar files found in apk_out.." || break
fi


cd $MODS/out
for i in * 
do
    if test -d "$i" 
    then rm -rf "$i"
    echo "Deleted $i from mods folder.."
    else
       echo "No files found in MODS folder.." || break
    fi
done


cd $FLASH
for i in *_DA.zip; do
    [ -e "$i" ] || echo "No zip files found in flashables.." || break
    rm -f "$i"
done

}


############################################
###                                      ###
###      Remove ".line" -script          ###
###                                      ###
############################################


remove_line () {
   
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
 
}





############################################
############################################

### FUTURE ADDITIONS ####


### Deodex (full rom + single jar/apk)

### Any ideas?


### 1982Strand ###
