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

sudo cp -f $TOOLS/apktool_1.5.2.jar /usr/local/bin/apktool.jar
sudo cp -f $TOOLS/aapt /usr/local/bin
sudo cp -f $TOOLS/apktool /usr/local/bin

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



TIMES=$SECONDS

cd $LOG
if [ ! -f decompile_log.txt ]
then touch decompile_log.txt
fi
   
echo ""
echo "[--- Decompiling apks/jars ---]"
echo ""


cat /dev/null > $LOG/decompile_log.txt

cd $IN
exclude="$(find . -maxdepth 1 -name '*.apk' | cut -c 3- | sort  && find . -maxdepth 1 -name '*.jar' | cut -c 3- | sort)"
if [ "$(ls -1 | grep -e '.\+\.apk$' -e '.\+\.jar$' | wc -l)" -gt 0 ]; then
    for i in $(echo $exclude); do
	echo "Decompiling $i" 2>&1 | tee -a $LOG/decompile_log.txt
	apktool -q d -f $i $DEC/$i
	    if [[ $i == *.jar ]]; then
	    echo ""
	    echo "Removing '.line' entries from smalis..."
	    echo ""
	    cd $DEC/$i
	    remove_line
	    cd $IN
	    fi
    done
    cp -f $TOOLS/sort.py $DEC
    cd $DEC
    python sort.py
    rm -r sort.py
else
    echo ""
    echo "No apks/jars found to decompile.."
    echo ""
fi

TIMEE=$SECONDS
DIFF=$(echo "$TIMEE-$TIMES" | bc)

echo ""
printf "[--- Operation completed in "%dh:%dm:%ds" ---]" $(($DIFF/3600)) $(($DIFF%3600/60)) $(($DIFF%60))

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

for apk in $(<$HJEM/apk_list.txt); do
                if [ -d "$DEC/$apk" ]; then
                cp -rf "$apk" $DEC;
                fi
done

cd $DEVICE

if [ -d m0 ]
then
    if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then
        for apk in $(<$HJEM/apk_list.txt); do
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

echo ""
echo "...Fixing Settings.apk - Remove Dock Settings and correct manufacturer settings icon"
echo ""


sed -i s/'<bool name="has_dock_settings">true<\/bool>'/'<bool name="has_dock_settings">false<\/bool>'/g $DEC/Settings.apk/res/values/bools.xml
sed -i s/'<header android:id="@id\/manufacturer_settings">'/'<header android:icon="@drawable\/factory_settings" android:id="@id\/manufacturer_settings">'/g $DEC/Settings.apk/res/xml/settings_headers.xml



if [[ -f $DEC/Calendar.apk/smali/com/android/calendar/CalendarViewAdapter.smali ]]
then

echo ""
echo "...Fixing Calendar.apk date format (smali)"
echo ""

patch -i $FIX/Calendar/CalendarViewAdapter.diff $DEC/Calendar.apk/smali/com/android/calendar/CalendarViewAdapter.smali

fi

if [[ -f $DEC/Calendar.apk/smali/com/android/calendar/agenda/AgendaByDayAdapter.smali ]]
then

patch -i $FIX/Calendar/AgendaByDayAdapter.diff $DEC/Calendar.apk/smali/com/android/calendar/agenda/AgendaByDayAdapter.smali

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
echo "|  ___  ___   __   __    __   __                  By 1982Strand  |"
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
echo "| 1.  Center Clock                                               |"
echo "| 2.  Emoji  tabs        - ..But still no emoji :(               |"
echo "| 3.  3-Way Reboot       -- NOT WORKING YET --                   |"
echo "| 4.  CRT-OFF            -- NOT WORKING YET --                   |"
echo "| 5.  Hide carrier name from statusbar                           |"
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
       hide_carrier
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

#    tmp=`grep -l 'invoke-static {v0, v1, v2}, Lcom/android/internal/app/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V' *.smali`;
#    tmp=`echo $tmp | sed 's/MiuiGlobalActions$\(.*\)*.smali/\1/g'`;
#    tmp=`echo $tmp | sed 's/[^ ]* //'`;
#    sed -i "s/MiuiGlobalActions\$$tmp/MiuiGlobalActions\$222/g" "$MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl/MiuiGlobalActions.smali"
     sed -i s/MiuiGlobalActions\$4/MiuiGlobalActions\$222/g $MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl/MiuiGlobalActions.smali
     
     #### EXPERIMENTAL!! ####
     
    sed -i s/".method private showTimeoutDialog()V"/".method private showTimeoutDialog2()V"/g $MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl/LockPatternKeyguardView.smali
     
     
    
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


###  Hide carrier name from statusbar  ###

hide_carrier () {
   

echo ""
echo "Hide carriername from statusbar"
echo ""

sed -i s/'TextAppearance.StatusBar.Carrier" android:gravity="left'/'TextAppearance.StatusBar.Carrier" android:textSize="0.0sp" android:gravity="left'/g $DEC/MiuiSystemUI.apk/res/layout/status_bar.xml


}


############################################
###                                      ###
###      6. Recompile all apks/jars      ###
###                                      ###
############################################


recompile_apks () {

TIMES=$SECONDS

cd $LOG
if [ ! -f recompile_log.txt ]
then touch recompile_log.txt
fi

echo ""
echo "[--- Recompile apks/jars ---]"
echo ""

cat /dev/null > $LOG/recompile_log.txt

cd $DEC
exclude="$(find . -maxdepth 1 -name '*.apk' | cut -c 3- | sort  && find . -maxdepth 1 -name '*.jar' | cut -c 3- | sort)"
if [ "$(ls -1 | grep -e '.\+\.apk$' -e '.\+\.jar$' | wc -l)" -gt 0 ]; then
    for i in $(echo $exclude); do
    echo "Recompiling $i" 2>&1 | tee -a $LOG/recompile_log.txt
    apktool -q b -f $i 2>&1 | tee -a $LOG/recompile_log.txt
    
        if [ -f "$IN/$i" ]
        then cp -f $IN/$i $OUT
        fi
       
    done
else
    echo ""
    echo "No apks/jars found to recompile.."
    echo ""
fi

TIMEE=$SECONDS
DIFF=$(echo "$TIMEE-$TIMES" | bc)

echo ""
printf "[--- Operation completed in "%dh:%dm:%ds" ---]" $(($DIFF/3600)) $(($DIFF%3600/60)) $(($DIFF%60))

}


############################################
###                                      ###
###      7. Optimize PNGs                ###
###                                      ###
############################################


opt_png () {

TIMES=$SECONDS

echo ""
echo "[--- Optimize PNGs ---]"
echo ""

echo "This operation may take a while, please wait..."
echo ""

cd $DEC
if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then
    
    for a in *.apk; do
	if [ -d $a/build ]; then   
	    echo "Processing $a..."
	    find $DEC/$a/build/apk/ -iname "*.png" | while read PNG
		do
		    if [ `echo "$PNG" | grep -c "\.9\.png$"` -eq 0 ] ; then
		    $TOOLS/pngcrush "$PNG" "opt_png.png" &>/dev/null
		    mv -f opt_png.png $PNG
		    fi
		done
	fi
    done  
else
    echo "No files to process..."
    echo ""

TIMEE=$SECONDS
DIFF=$(echo "$TIMEE-$TIMES" | bc)

echo ""
printf "[--- Operation completed in "%dh:%dm:%ds" ---]" $(($DIFF/3600)) $(($DIFF%3600/60)) $(($DIFF%60))
    
fi

}


############################################
###                                      ###
###      8. Inject resources             ###
###                                      ###
############################################


inject_res () {

cd $LOG
if [ ! -f inject_log.txt ]
then touch inject_log.txt
fi
   
echo ""
echo "[--- Injecting Modified Resources ---]"
echo ""

cat /dev/null > $LOG/inject_log.txt
cd $OUT

if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then

    for apk in *.apk; do
	echo "Processing $apk" 2>&1 | tee -a $LOG/inject_log.txt
        7za u -r -mx0 -tzip $OUT/$apk $DEC/$apk/build/apk/resources.arsc &>> $LOG/inject_log.txt
        7za u -r -mx0 -tzip $OUT/$apk $DEC/$apk/build/apk/classes.dex &>> $LOG/inject_log.txt
        7za u -r -mx0 -tzip $OUT/$apk $DEC/$apk/build/apk/res &>> $LOG/inject_log.txt

    done
else
    echo ""
    echo "No recompiled files to process.."
    echo ""
fi
 
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
echo "|  ___  ___   __   __    __   __                  By 1982Strand  |"
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

cd $LOG
if [ ! -f signing_log.txt ]
then touch signing_log.txt
fi

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


cd $LOG
if [ ! -f signing_log.txt ]
then touch signing_log.txt
fi

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
    echo ""
    echo "Adding translation to lockscreen..."
    echo ""
    
    unzip -u -j $zip system/media/theme/default/lockscreen -d "$FLASH/template/system/media/theme/default" > /dev/null

    cd $FLASH/template/system/media/theme/default
    mv -f lockscreen lockscreen.zip

    7za u -mx0 -tzip -r lockscreen.zip "$XTRA/lockscreen/advance" > /dev/null
    mv -f lockscreen.zip lockscreen


# Tilføj oversættelse til alarmskærm (deskclock)
    
    echo ""
    echo "Adding translation to alarmscreen (Deskclock)..."
    echo ""

    
    unzip -u -j $zip system/media/theme/default/alarmscreen -d "$FLASH/template/system/media/theme/default" > /dev/null

    cd $FLASH/template/system/media/theme/default
    mv -f alarmscreen alarmscreen.zip

    7za u -mx0 -tzip -r alarmscreen.zip "$XTRA/alarmscreen/strings" > /dev/null
    mv -f alarmscreen.zip alarmscreen


# Oversæt clock widget

# system/media/theme/.data/content/clock_2x4/simple_clock/images_da
# system/media/theme/.data/content/clock_2x4/clock/strings/strings_da.xml

    echo ""
    echo "Adding translation to clock widgets..."
    echo ""


    unzip -o $zip system/media/theme/.data/content/clock_2x4/\* -d $FLASH/template > /dev/null
    cd $FLASH/template/system/media/theme/.data/content/clock_2x4
    
    mv -f clock.mrc clock.zip
	# Oversæt vejr-del af manifest.xml, fra 2x4 - clock.mrc #
        unzip -j clock.zip manifest.xml
	patch -i $FIX/manifest.diff $FLASH/template/system/media/theme/.data/content/clock_2x4/manifest.xml
	7za u -mx0 -r clock.zip "manifest.xml" &>/dev/null
	rm -f manifest.xml

    
    7za u -mx0 -r clock.zip "$XTRA/clock/strings" > /dev/null
    
    mv -f clock.zip clock.mrc
    
    mv -f simple_clock.mrc simple_clock.zip
    7za u -mx0 -r simple_clock.zip "$XTRA/simple_clock/images_da" > /dev/null
    mv -f simple_clock.zip simple_clock.mrc


# Kopier apker over
    
    echo ""
    echo "Importing apks from apk_out..."
    echo ""

    
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
        then mv -f framework-miui-res.apk $FLASH/template/system/framework &>/dev/null
        fi
if [[ -e framework-res.apk ]]
        then mv -f framework-res.apk $FLASH/template/system/framework &>/dev/null
        fi
        
# Patch tema titler (officiel rom)

echo ""
echo "Adding translation to Miui Theme titles..."
echo ""

unzip -o $zip system/media/theme/.data/meta/\* -d $FLASH/template > /dev/null

cd $FLASH/template
find -name '*.mrm' -exec sed -i 's/默认/Standard/g' {} \; > /dev/null

find -name '*.mrm' -exec sed -i 's/翻页时钟1/Flip Ur/g' {} \; > /dev/null

find -name '*.mrm' -exec sed -i 's/动态指针时钟2/Simpelt Ur/g' {} \; > /dev/null

find -name '*.mrm' -exec sed -i 's/简约时钟1/Simpelt Ur/g' {} \; > /dev/null

find -name '*.mrm' -exec sed -i 's/简洁时钟(小右)/Simpelt Ur (lille)/g' {} \; > /dev/null
                                   
find -name '*.mrm' -exec sed -i 's/简洁时钟(大右)/Simpelt Ur (stor)/g' {} \; > /dev/null

find -name '*.mrm' -exec sed -i 's/Standard相框4x4/Fotoramme 4x4/g' {} \; > /dev/null

find -name '*.mrm' -exec sed -i 's/Standard相框2x4/Fotoramme 2x4/g' {} \; > /dev/null

find -name '*.mrm' -exec sed -i 's/Standard相框2x2/Fotoramme 2x2/g' {} \; > /dev/null

echo ""
echo "Adding translated MIUI theme previews..."
echo ""

cd $XTRA
rsync -rR system/ $FLASH/template/
cd $FLASH/template

echo ""
echo "Patching Build.prop for danish locale..."
echo ""

unzip -u -j $zip system/build.prop -d $FLASH/template/system > /dev/null

cd $FLASH/template/system
sed -i 's/ro.product.locale.language=zh/ro.product.locale.language=da/g' build.prop
sed -i 's/ro.product.locale.region=CN/ro.product.locale.region=DK/g' build.prop

    
# Kopier eventuelle mods over
    echo ""
    echo "Importing MODS if present..."
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
            echo "No modded jars found..."; break
fi
    
    
# Pak filerne og navngiv efter version, ryd op, løkke afsluttet
done

    echo ""
    echo "Compressing files to new zip..."
    echo ""


cp -f $FLASH/template.zip $FLASH/flashable.zip
    7za a -tzip $FLASH/flashable.zip $FLASH/template/system -mx3 > /dev/null
    mv -f $FLASH/flashable.zip $FLASH/"$ver"_DA.zip
    echo ""
    echo "[--- Done! Output zip is: "$ver"_DA.zip ---]"
    
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
    
    cd $FLASH/template/system/media/theme/default
    if [[ -e alarmscreen ]]
    then rm -f alarmscreen
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

cd $LOG
if [ ! -f decompile_log.txt ]
then touch decompile_log.txt
fi
  
shopt -s failglob
echo "[--- Choose apk number, or x to exit ---]"
echo ""
echo ""


cd $IN
exclude="$(find . -maxdepth 1 -name '*.apk' | cut -c 3- | sort  && find . -maxdepth 1 -name '*.jar' | cut -c 3- | sort)"
if [ "$(ls -1 | grep -e '.\+\.apk$' -e '.\+\.jar$' | wc -l)" -gt 0 ]; then

    select file in $(echo $exclude)
    do
    cat /dev/null > $LOG/decompile_log.txt
    [[ $REPLY == x ]] && . $HJEM/build
    [[ -z $file ]] && echo "Invalid choice for single decompiling" && continue
    echo
    echo "Decompiling $file" 2>&1 | tee -a $LOG/decompile_log.txt
    apktool d -f "$file" $DEC/$file
    cp -f $TOOLS/sort.py $DEC/$file
    python $DEC/$file/sort.py
    rm -r $DEC/$file/sort.py

	if [[ $file == *.jar ]]; then
	    echo ""
	    echo "Removing '.line' entries from smalis..."
	    echo ""
	    cd $DEC/$file
	    remove_line
	    cd $IN
	fi
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

cd $LOG
if [ ! -f recompile_log.txt ]
then touch recompile_log.txt
fi
   
shopt -s failglob
echo "[--- Choose apk number, or x to exit ---]"
echo ""
echo ""


cd $DEC

exclude="$(find . -maxdepth 1 -name '*.apk' | cut -c 3- | sort  && find . -maxdepth 1 -name '*.jar' | cut -c 3- | sort)"
if [ "$(ls -1 | grep -e '.\+\.apk$' -e '.\+\.jar$' | wc -l)" -gt 0 ]; then

    select file in $(echo $exclude)
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
###      c. Cleaning options             ###
###                                      ###
############################################

clean_menu () {
   
clear

while [ answer != "0" ] 
do
clear
echo "|----------------------------------------------------------------|"
echo "|  ___  ___   __   __    __   __                  By 1982Strand  |"
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
echo "| 3.  Clean apk_out folder                                       |"
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
       3) clear
       cleanup_apk_out
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

### universal clean function ###

rm_files () {
    (IFS='
    '
    exclude="$(find . -maxdepth 1 ! -name 'decompiled' | grep -v '.gitignore' | awk 'FNR>1' | sort -r)"
    echo "$exclude" | while read i; do
        rm -r $i
    done)
}
    
###  clean all  ###


cleanup_all () {

cd $DEC
if [ "$(ls $DEC | wc -l)" -gt 0 ]; then
    rm_files
echo "Deleted files from decompiled.."
else 
    echo "No files found in decompiled.." 
fi

cd $IN
if [ "$(ls $IN | wc -l)" -gt 1 ]; then
    rm_files
echo "Deleted files from apk_in.."
else 
    echo "No files found in apk_in.." 
fi

cd $OUT
if [ "$(ls $OUT | wc -l)" -gt 0 ]; then
    rm_files
echo "Deleted files from apk_out.."
else 
    echo "No files found in apk_out.." 
fi

cd $MODS/out
if [ "$(ls $MODS/out | wc -l)" -gt 0 ]; then
    rm_files
    echo "Deleted files from MODS folder.."
    else
       echo "No files found in MODS folder.." 
fi

cd $FLASH 
if [ "$(ls $FLASH | grep -e '.\+DA.zip$' | wc -l)" -gt 0 ]; then
    (IFS='
    '
    echo $(find . -name *_DA.zip) | while read i; do
        rm $i
    done >/dev/null)
    echo "flashable folder cleaned"
else
    echo "No files found in flashable.."
fi

}
###  clean all but apks  ####


cleanup_not_apk () {
    
    
cd $DEC
if [ "$(ls $DEC | wc -l)" -gt 0 ] &> /dev/null; then
    rm_files
echo "Deleted files from decompiled.."
else 
    echo "No files found in decompiled.." 
fi

cd $OUT
if [ "$(ls $OUT | wc -l)" -gt 0 ]; then
    rm_files
echo "Deleted files from apk_out.."
else 
    echo "No files found in apk_out.." 
fi

cd $MODS/out
if [ "$(ls $MODS/out | wc -l)" -gt 0 ]; then
    rm_files
    echo "Deleted files from MODS folder.."
    else
       echo "No files found in MODS folder.." 
fi

cd $FLASH 
if [ "$(ls $FLASH | grep -e '.\+DA.zip$' |wc -l)" -gt 0 ]; then
    (IFS='
    '
    echo $(find . -name *_DA.zip) | while read i; do
        rm $i
    done >/dev/null)
    echo "flashable folder cleaned"
else
    echo "No files found in flashable.."
fi

}

cleanup_apk_out () {

cd $OUT
if [ "$(ls $OUT | wc -l)" -gt 0 ]; then
    rm_files
echo "Deleted files from apk_out.."
else 
    echo "No files found in apk_out.." 
fi

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


### Revert to old 3-way patch


3way_old () {
   
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

cd $MODS/3way/android.policy.jar.out
remove_line

cd $MODS/3way
#patch -i $MODS/3way/MiuiGlobalActions_no_line_new.diff $MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl/MiuiGlobalActions.smali
sed -i s/MiuiGlobalActions\$4/MiuiGlobalActions\$222/g $MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl/MiuiGlobalActions.smali
patch -i $MODS/3way/MiuiGlobalActions\$SinglePressAction_no_line_new.diff $MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl/MiuiGlobalActions\$SinglePressAction.smali
cp -r -f $MODS/3way/*.smali $MODS/3way/android.policy.jar.out/smali/com/android/internal/policy/impl/

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


### Test of new extraction options menu ####

extract_menu () {
 
clear

while [ answer != "0" ] 
do
clear
echo "|----------------------------------------------------------------|"
echo "|  ___  ___   __   __    __   __                  By 1982Strand  |"
echo "| |   \/   | |  | |  |  |  | |  |                                |"
echo "| |  \  /  | |  | |  |  |  | |  |                                |"       
echo "| |  |\/|  | |  | |  |  |  | |  |                                |"
echo "| |  |  |  | |  | |  '--'  | |  |                                |"
echo "| |__|  |__| |__|  \______/  |__| Building script                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                      Extraction Options                        |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "| 1.  Extract all MIUI apks from zip                             |"
echo "| 2.  Extract all MIUI apks and jars from zip                    |"
echo "| 3.  Extract all MIUI jars from zip                             |"
echo "| 4.  Extract single apk or jar from zip                         |"
echo "| 5.  Pull translation files from decompiled folders             |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|x - Return to main menu                                         |"
echo "|----------------------------------------------------------------|"
printf %s " Select an Option: "
read -p " " answer
    case $answer in
       1) clear
       pull_apks
       ;;
       2) clear
       pull_apkjar
       ;;
       3) clear
       pull_jars
       ;;
       4) clear
       pull_single
       ;;
       5) clear
       pull_xml
       ;;
       x) clear
       . $HJEM/build
       ;;
       *) echo ""
          echo "invalid choice of extaction"
       ;;       
    esac
    break
done

}


############################################
###                                      ###
###      1. Extract apks from zip        ###
###                                      ###
############################################


pull_apks () {


shopt -s failglob
echo "[--- Choose rom zip to extract from, or x to exit ---]"
echo ""
echo ""

cd $SRC

if [ "$(ls -1 | grep '.\+\.zip$' | wc -l)" -gt 0 ]; then

    zips=$(ls -1 $SRC | grep '.\+\.zip')
    select choice in $zips
    do
        [[ $REPLY == x ]] && . $HJEM/build
        [[ -z $choice ]] && echo "Invalid choice" && continue
        echo
            for apk in $(<$HJEM/apk_list.txt); do 
            unzip -j -o -q $choice system/app/$apk -d $IN >& /dev/null;
            done
        unzip -j -o -q $choice system/framework/framework-res.apk -d $IN >& /dev/null;
        unzip -j -o -q $choice system/framework/framework-miui-res.apk -d $IN >& /dev/null;
    break
    done
echo "Files extracted..."
else
    echo ""
    echo "No zip files found.."
    echo ""
fi
 
}


############################################
###                                      ###
###    2. Extract apks/jars from zip     ###
###                                      ###
############################################


pull_apkjar () {


shopt -s failglob
echo "[--- Choose rom zip to extract from, or x to exit ---]"
echo ""
echo ""

cd $SRC

if [ "$(ls -1 | grep '.\+\.zip$' | wc -l)" -gt 0 ]; then

    zips=$(ls -1 $SRC | grep '.\+\.zip')
    select choice in $zips
    do
        [[ $REPLY == x ]] && . $HJEM/build
        [[ -z $choice ]] && echo "Invalid choice" && continue
        echo
            for apk in $(<$HJEM/apk_list.txt); do 
            unzip -j -o -q $choice system/app/$apk -d $IN >& /dev/null;
            done
        unzip -j -o -q $choice system/framework/framework-res.apk -d $IN >& /dev/null;
        unzip -j -o -q $choice system/framework/framework-miui-res.apk -d $IN >& /dev/null;
	unzip -j -o -q $choice system/framework/framework.jar -d $IN >& /dev/null;
        unzip -j -o -q $choice system/framework/framework2.jar -d $IN >& /dev/null;
	unzip -j -o -q $choice system/framework/android.policy.jar -d $IN >& /dev/null;
	unzip -j -o -q $choice system/framework/services.jar -d $IN >& /dev/null;
    break
    done
echo "Files extracted..."
else
    echo ""
    echo "No zip files found.."
    echo ""
fi
 
}


############################################
###                                      ###
###      3. Extract jars from zip        ###
###                                      ###
############################################


pull_jars () {
    
shopt -s failglob
echo "[--- Choose rom zip to extract from, or x to exit ---]"
echo ""
echo ""

cd $SRC

if [ "$(ls -1 | grep '.\+\.zip$' | wc -l)" -gt 0 ]; then

    zips=$(ls -1 $SRC | grep '.\+\.zip')
    select choice in $zips
    do
        [[ $REPLY == x ]] && . $HJEM/build
        [[ -z $choice ]] && echo "Invalid choice" && continue
        echo
	unzip -j -o -q $choice system/framework/framework.jar -d $IN >& /dev/null;
        unzip -j -o -q $choice system/framework/framework2.jar -d $IN >& /dev/null;
	unzip -j -o -q $choice system/framework/android.policy.jar -d $IN >& /dev/null;
	unzip -j -o -q $choice system/framework/services.jar -d $IN >& /dev/null;
    break
    done
echo "Files extracted..."
else
    echo ""
    echo "No zip files found.."
    echo ""
fi
 
}


############################################
###                                      ###
###    4. Extract single apks/jars       ###
###                                      ###
############################################


pull_single () {

shopt -s failglob
echo "[--- Choose rom zip to extract from, or x to exit ---]"
echo ""
echo ""

cd $SRC

if [ "$(ls -1 | grep '.\+\.zip$' | wc -l)" -gt 0 ]; then

    zips=$(ls -1 $SRC | grep '.\+\.zip')
    select rom in $zips
    do
    [[ $REPLY == x ]] && . $HJEM/build
    [[ -z $rom ]] && echo "Invalid choice of zip" && continue
    echo
        select single in $(unzip -l ./$rom | sed -n 4,50000p | head -n $(echo $(unzip -l ./$rom | sed -n 4,50000p | wc -l) -2 | bc) | tr -s " " | cut -d " " -f5 | grep -f "$HJEM/apk_list.txt") $(unzip -l ./$rom | sed -n 4,50000p | head -n $(echo $(unzip -l ./$rom | sed -n 4,50000p | wc -l) -2 | bc) | tr -s " " | cut -d " " -f5 | grep -f "$HJEM/jar_list.txt")
        do
	[[ $REPLY == x ]] && . $HJEM/build
	[[ -z $single ]] && echo "Invalid choice for single extraction" && continue
	echo
            unzip -u -j $rom $single -d $IN # Edit this 'unzip' command to suit your needs
	    echo ""
	    echo "Files extracted..."
	    echo ""
	    break
#            mv $SRC/$single $IN/$(echo $single | rev | cut -d "/" -f1 | rev )
#            rm -r ./system
        done
    done

else
    echo ""
    echo "No zip files found.."
    echo ""
fi
 
}


############################################
###                                      ###
###      5. Pull translations            ###
###                                      ###
############################################

pull_xml () {

cd $DEC

if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then

echo ""
echo ""
echo "This function will pull xmls and images from values folders, ready for translation"
echo ""
echo ""
echo -n "Enter version (x.xx.xx) and press [ENTER]: "
read ver
[[ "$ver" =~ ^[0-9]\.[0-9]{1,2}\.[0-9]{1,2}$ ]] && echo "Rom version: ${ver}" || echo "Invalid"
    
    cd $HJEM
    
    if [[ -d temp ]]; then
    cd temp
	if ! [[ -d $ver ]]; then
	mkdir -p $ver
	fi
    else
    mkdir -p temp
    cd temp
    mkdir -p $ver
    fi
    
    cd $DEC
    
    rsync -R `find -type d -not \( -name 'values-*' -prune -o -name 'xml-*' -prune -o -name 'raw-*' -prune \) -o -name strings.xml -o -name arrays.xml -o -name plurals.xml -o -name timezones.xml -o -name sms_frequently_used_phrase -o -name introduction` $ver &>/dev/null
    
    for a in `find -maxdepth 1 -name '*.apk' | cut -c 3- | sort`; do
    
	x=$a/res/drawable-xhdpi
	y=$a/res/drawable-hdpi
	z=$a/res/raw
	while read image; do
	    if [ -f $x/$image ]; then
		rsync -R $x/$image $ver &>/dev/null
	    fi
	    if [ -f $y/$image ]; then
		rsync -R $y/$image $ver &>/dev/null
	    fi
	    if [ -f $z/$image ]; then
		rsync -R $z/$image $ver &>/dev/null
	    fi
	done < $HJEM/image_list.txt
    done

    if [ -d $DEC/$ver ]; then
    cp -rf $DEC/$ver $HJEM/temp
    rm -rf $DEC/$ver
    fi

echo ""
echo "Files copied.. Ready for translation :)"
echo ""
echo "Files are located in temp/$ver..."
echo ""
else
    echo ""
    echo "No decompiled folders to process..."
    echo ""
fi


} 


############################################
###                                      ###
###      part file test                  ###
###                                      ###
############################################

part_file_test () {

XMLMERGYTOOL=$TOOLS/ResValuesModify  
  
cd $HJEM/temp/part_file_test # Go to dir with part files

if [ -d Provision.apk ];then 
$XMLMERGYTOOL $HJEM/temp/part_file_test/Provision.apk $DEC/Provision.apk/res/values-da # merge part files into xmls in decompiled folder
fi
}

### TEST COMPLETE - WORKS! ###


############################################
############################################

### FUTURE ADDITIONS ####



### Deodex (full rom + single jar/apk) -- But maybe not.. Havn't found myself needing it since i started developing on this tool :)

### Any ideas?


### 1982Strand ###
