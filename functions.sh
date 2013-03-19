#!/bin/bash

##### FUNCTIONS #####


# Template for function #

#function () {
   
#do something like decompile app
 
#}


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
if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then #if there are more than 0 results of *.apk...
    for file in *.apk ; do
        echo "Decompiling $file" 2>&1 | tee -a $LOG/decompile_log.txt
        apktool -q d -f $file $DEC/$file
    done
cp -f $HJEM/sort.py $DEC
cd $DEC
python sort.py
rm -r sort.py
fi

if [ "$(ls -1 | grep '.\+\jar$' | wc -l)" -gt 0 ]; then #if there are more than 0 results of *jar...
    for file in *jar; do
        echo "Decompiling $file" 2>&1 | tee -a $LOG/decompile_log.txt
        apktool -q d -f $file $DEC/$file
    done
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
                cp -r -f "$apk" $DEC;
fi
done

cd $DEVICE

for apk in $(<$HJEM/translation_list.txt); do
                if [ -d "$DEC/$apk" ]; then
                cp -r -f "$apk" $DEC; > /dev/null 2>&1
fi
done

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

sed -i '/  - 1/a \
  - 2\
  - 3\
  - 4\
  - 5
' $DEC/framework-miui-res.apk/apktool.yml



echo ""
echo "...Fixing Browser.apk (arrays.xml)"
echo ""

sed -i s/'\&amp\;amp\;amp\;'/'\&amp\;'/g $DEC/Browser.apk/res/values/arrays.xml
 
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
echo "|                                                                |"
echo "|                       MIUI building script                     |"
echo "|                                                 -By 1982Strand |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                        MODS SECTION                            |"
echo "|                                                                |"
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
echo "|                                                                |"
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
if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then

for b in *.apk; do
    echo "Recompiling $b" 2>&1 | tee -a $LOG/recompile_log.txt
    apktool -q b -f $b 2>&1 | tee -a $LOG/recompile_log.txt
    
	if [ -f "$DEC/$b/dist/$b" ]
	then cp -f $DEC/$b/dist/$b $OUT
	fi
       
    done
else
    echo ""
    echo "No apks found to recompile.."
    echo ""
fi

if [ "$(ls -1 | grep '.\+\.jar$' | wc -l)" -gt 0 ]; then

for jar in *.jar; do
    echo "Recompiling $jar" 2>&1 | tee -a $LOG/recompile_log.txt
    apktool -q b -f $jar 2>&1 | tee -a $LOG/recompile_log.txt
    done
else
    echo ""
    echo "No jars found to recompile"
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
    break
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
#enter
enter()
{	echo
	echo "Please press [enter] to continue";
	read -s -n 1 key
	if [[ $key = "" ]]; then 
  		echo
  		clear
	fi
}


#future features
ff ()
{	clear
	echo "Feature coming in a future release. Stay tuned."
	enter
}



#load
load_dot ()
{	for DOT in . . . . . . . ; do
	echo -n "$DOT"
	sleep .15
	done
	echo "."
}

png_out ()
{	clear
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
{	clear
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
{	clear
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
{	clear
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

	for a in *.apk; do 
	echo "Zipaligning $a" 
	echo
	zipalign -f 4 $a $a.aligned
                rm $a
                mv $a.aligned $a
	echo
	done
 
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
echo "|                                                                |"
echo "|                       MIUI building script                     |"
echo "|                                                 -By 1982Strand |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                        Signing Options                         |"
echo "|                                                                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "| 1.  Sign all apks (in apk_out)                                 |"
echo "| 2.  Sign single apk                                            |"
echo "|                                                                |"
echo "|                                                                |"
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
          echo "invalid choice of cleaning"
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
    echo "No files found.."
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
    echo "No files found.."
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

# Tilføj apk'er fra apk_out

    for apk in $(<$HJEM/translation_list.txt); do
    cp -r -f "$OUT/$apk" $FLASH/template/system/app;
    done
    mv -f $FLASH/template/system/app/framework-miui-res.apk $FLASH/template/system/framework

# Kopier eventuelle mods over
    echo ""
    echo "[--- Checking if MODS exist ---]"
    echo ""
    if [ -d $MODS/out/$ver ]
    then
	    cd $MODS/out/$ver
	    if [ -f android.policy.jar ]
	    then
	    cp -f android.policy.jar $FLASH/template/system/framework
	    else echo ""
		 echo "[--- No android.policy.jar found, aborting copy.. ---]"; break
	    fi
		    if [ -f services.jar ]
		    then
		    cp -f services.jar $FLASH/template/system/framework
		    else echo ""
			 echo "[--- No services.jar found, aborting copy.. ---]"; break		
		    fi

    else
	    echo ""
	    echo "[--- No modded jars found ---]"
    fi
    
    
# Pak filerne og navngiv efter version, ryd op, løkke afsluttet
done
    cp -f $FLASH/template.zip $FLASH/flashable.zip
    7za a -tzip $FLASH/flashable.zip $FLASH/template/system -mx3 > /dev/null
    mv -f $FLASH/flashable.zip $FLASH/"$ver"_DA.zip
    echo ""
    echo "[--- Done! Your zip is named: "$ver"_DA.zip"
    rm -rf $FLASH/template/system/app/*
    rm -rf $FLASH/template/system/framework/*


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
if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then

    select file in *.apk
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
    echo "No files found.."
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

if [ "$(ls -1 | grep '.\+\.apk$' | wc -l)" -gt 0 ]; then

    select file in *.apk
    do
    cat /dev/null > $LOG/recompile_log.txt
    [[ $REPLY == x ]] && . $HJEM/build
    [[ -z $file ]] && echo "Invalid choice for single recompiling" && continue
    echo
    echo "Recompiling $file" 2>&1 | tee -a $LOG/recompile_log.txt
    apktool b -f "$file"
    
    	if [ -f "$DEC/$file/dist/$file" ]
	then cp -f $DEC/$file/dist/$file $OUT
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
###      14. fix official sources        ###
###                                      ###
############################################


source_fix_official () {
   
echo ""
echo "[--- Fix MIUI sources ---]"
echo ""

echo ""
echo "...Fixing framework-miui-res.apk"
echo ""

grep -q -e '<item>da_DK</item>' $DEC/framework-miui-res.apk/res/values/arrays.xml || sed -i 's|<item>zh_TW</item>|<item>da_DK</item>|' $DEC/framework-miui-res.apk/res/values/arrays.xml

sed -i '/ - 1/a \
 - 2\
 - 3\
 - 4\
 - 5
' $DEC/framework-miui-res.apk/apktool.yml

if [[ -f $DEC/Browser.apk/smali/com/android/browser/MiuiSuggestionsAdapter.smali ]]
then

echo ""
echo "...Fixing Browser.apk (smali)"
echo ""

sed -i '/const-string v2, "baidu"/c \
const-string v2, "google"' $DEC/Browser.apk/smali/com/android/browser/MiuiSuggestionsAdapter.smali

fi

#patch -i $FIX/Browser/MiuiSuggestionsAdapter.diff $DEC/Browser.apk/smali/com/android/browser/MiuiSuggestionsAdapter.smali
#cd $DEC/Browser.apk/smali/com/android/browser/ 
#rm -f -r *.rej
#rm -f -r *.orig

echo ""
echo "...Fixing Browser.apk (arrays.xml)"
echo ""

sed -i s/'\&amp\;amp\;amp\;'/'\&amp\;'/g $DEC/Browser.apk/res/values/arrays.xml
 
}


############################################
###                                      ###
###      15. patch/build official rom    ###
###                                      ###
############################################


patch_miui () {
   
# Original rom ligger i source_roms mappe
# Udpak de nødvendige filer der skal patches, pak dem ud til flashable/original/in mappen, i korrekt mappestruktur
# udfør patching
# kopier (og omdøb) original rom til flashable/original/out
# kopier nye filer ind i omdøbte original rom - dvs ingen "lang-pack", men istedet en moddet full rom - HVER uge.. Kun "lang-pack" til miuiandroids rom.


# /system/media/theme/.data/meta/mms/default.mrm

clear
echo -n "Enter ROM version (x.xx.xx) and press [ENTER]: "
echo ""
echo ""

read ver
[[ "$ver" =~ ^[0-9]{1}\.[0-9]{1,2}\.[0-9]{1,2}$ ]] && echo "Source rom is miui_i9300_${ver}.zip" || echo "Invalid"

unzip -o $SRC/miui_i9300_${ver}.zip system/build.prop -d $FLASH/original/in
unzip -o $SRC/miui_i9300_${ver}.zip system/media/theme/.data/meta/\* -d $FLASH/original/in

echo ""
echo "[--- Patch Miui Theme titles ---]"
echo ""

# FØLGENDE ER TESTET OG VIRKER !!
cd $FLASH/original/in
find $FLASH/original/in -name *.mrm -type f|xargs sed -i 's/默认/Standard/g'

cd $HJEM

echo ""
echo "[--- Patch Build.prop ---]"
echo ""

cd $FLASH/original/in
find $FLASH/original/in/system/build.prop -type f|xargs sed -i 's/ro.product.locale.language=zh/ro.product.locale.language=da/g'
find $FLASH/original/in/system/build.prop -type f|xargs sed -i 's/ro.product.locale.region=CN/ro.product.locale.region=DK/g'
cd $HJEM

cp -f $SRC/miui_i9300_${ver}.zip $FLASH/original/out
cd $HJEM
cp -f $HJEM/apk_out/*.apk $FLASH/original/in/system/app
cp -f $HJEM/apk_out/framework-miui-res.apk $FLASH/original/in/system/framework
rm -r $FLASH/original/in/system/app/framework-miui-res.apk
rm -r $FLASH/original/in/system/app/framework-res.apk
rm -r $FLASH/original/in/system/media/theme/.directory
cp -f $HJEM/flashable/template/system/media/theme/default/lockscreen $FLASH/original/in/system/media/theme/default/lockscreen
cp -f $HJEM/mods/out/${ver}/*.jar $FLASH/original/in/system/framework

7za u -tzip $FLASH/original/out/miui_i9300_${ver}.zip $IN/system
mv -f $FLASH/original/out/miui_i9300_${ver}.zip $FLASH/original/out/miui_i9300_${ver}_DA.zip

echo ""
echo "Output ROM is miui_i9300_${ver}_DA.zip"
echo ""

rm -r $FLASH/original/in/system/app/*.apk
rm -r $FLASH/original/in/system/framework/*.apk
rm -r $FLASH/original/in/system/framework/*.jar
 
}



############################################
###                                      ###
###      e. Extract apks from zip        ###
###                                      ###
############################################


pull () {
   
shopt -s failglob
echo "[--- Choose rom zip to extract from, or x to exit ---]"
echo ""
echo ""

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

zip=dummy
 
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
echo "|                                                                |"
echo "|                       MIUI building script                     |"
echo "|                                                 -By 1982Strand |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                        Cleaning Options                        |"
echo "|                                                                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                                                                |"
echo "| 1.  Clean all folders                                          |"
echo "| 2.  Clean all but apks in apk_in folder                        |"
echo "|                                                                |"
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

cd $IN
for i in *.apk; do
    [ -e "$i" ] || echo "No apk files found in apk_in.." || break
    rm -f "$i"
done


if [ "$(ls -1 | grep '.\+\.jar$' | wc -l)" -gt 0 ]; then
    for j in *.jar; do
    rm -f "$j"
    done
else
    echo "No jar files found in apk_in.."
fi

cd $DEC
for i in * 
do
    if test -d "$i" 
    then rm -rf "$i"
    else
       echo "No decompile folders found.." || break
    fi
done


cd $OUT
for i in *.apk; do
    [ -e "$i" ] || echo "No apk files found in apk_out.." || break
    rm -f "$i"
done


cd $MODS/out
for i in * 
do
    if test -d "$i" 
    then rm -rf "$i"
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


###  clean all but apks  ####


cleanup_not_apk () {
   
    
cd $DEC
for i in * 
do
    if test -d "$i" 
    then rm -f "$i"
    else
       echo "No decompile folders found.." || break
    fi
done


cd $OUT
for i in *.apk; do
    [ -e "$i" ] || echo "No apk files found in apk_out.." || break
    rm -f "$i"
done


cd $MODS/out
for i in * 
do
    if test -d "$i" 
    then rm -f "$i"
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
