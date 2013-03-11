#! /bin/bash

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
enter
cd $w
echo "These apks are about to optimized with PNGout."
echo
cd $w
ls *.apk
echo
load_dot
load_dot
echo
if ! [[ -s tmp ]] ; then
	mkdir tmp
fi
for a in *.apk ; do
	cd $w
	echo "PNGS in $a will be optimized with PNGout"
	unzip -o $a -d ${a/.apk}-png
	cd ${a/.apk}-png
	find . -iname "*.png" | while read PNG 
		do 
		if [ `echo "$PNG" | grep -c "\.9\.png$"` -eq 0 ] ; then 
			$p/pngout "$PNG"  
		fi 
		done
	zip -r $w/tmp/$a *
	rm -rf $w/${a/.apk}-png
	echo
done
echo "New apks might need to be resigned if third-party app"
cd $w/tmp
for a in *.apk ; do
mv -f $a $w
done
rm -r $w/tmp
enter
}

png_crush ()
{	clear
echo
enter
echo "These apks are about to optimized with pngCrush."
echo
cd $w
ls *.apk
echo
load_dot
load_dot
echo
if ! [[ -s tmp ]] ; then
	mkdir tmp
fi
for a in *.apk ; do
	cd $w
	echo "PNGS in $a will be optimized with pngCrush"
	unzip -o $a -d ${a/.apk}-png
	cd ${a/.apk}-png
	find . -iname "*.png" | while read PNG 
		do 
		if [ `echo "$PNG" | grep -c "\.9\.png$"` -eq 0 ] ; then 
			$p/pngcrush "$PNG"  
		fi 
		done
	zip -r $w/tmp/$a *
	rm -rf $w/${a/.apk}-png
	echo
done
echo "New apks might need to be resigned if third-party app"
cd $w/tmp
for a in *.apk ; do
mv -f $a $w
done
rm -r $w/tmp
enter
}

opti_png ()
{	clear
echo
enter
echo "These apks are about to optimized with OptiPNG."
echo
cd $w
ls *.apk
echo
load_dot
load_dot
echo
if ! [[ -s tmp ]] ; then
	mkdir tmp
fi
for a in *.apk ; do
	cd $w
	echo "PNGS in $a will be optimized with OptiPNG"
	unzip -o $a -d ${a/.apk}-png
	cd ${a/.apk}-png
	find . -iname "*.png" | while read PNG 
		do 
		if [ `echo "$PNG" | grep -c "\.9\.png$"` -eq 0 ] ; then 
			$p/optipng "$PNG"  
		fi 
		done
	zip -r $w/tmp/$a *
	rm -rf $w/${a/.apk}-png
	echo
done
echo "New apks might need to be resigned if third-party app"
cd $w/tmp
for a in *.apk ; do
mv -f $a $w
done
rm -r $w/tmp
enter
}

adv_png ()
{	clear
echo
enter
echo "These apks are about to optimized with AdvPNG."
echo
cd $w
ls *.apk
echo
load_dot
load_dot
echo
if ! [[ -s tmp ]] ; then
	mkdir tmp
fi
for a in *.apk ; do
	cd $w
	echo "PNGS in $a will be optimized with AdvPNG"
	unzip -o $a -d ${a/.apk}-png
	cd ${a/.apk}-png
	find . -iname "*.png" | while read PNG 
		do 
		if [ `echo "$PNG" | grep -c "\.9\.png$"` -eq 0 ] ; then 
			$p/advpng "$PNG"  
		fi 
		done
	zip -r $w/tmp/$a *
	rm -rf $w/${a/.apk}-png
	echo
done
echo "New apks might need to be resigned if third-party app"
cd $w/tmp
for a in *.apk ; do
mv -f $a $w
done
rm -r $w/tmp
enter
}

apk_opt_script () 
{
clear
w=~/buildtool/apk_out
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
echo "| q.  Go to main menu                         |"
echo "|---------------------------------------------|"
echo "|---------------------------------------------|"
printf %s " Select a png opt tool: "
read num
case $num in
 1) png_out;;
 2) png_crush;;
 3) opti_png;;
 4) adv_png;;
 q) clear; . $HOME/build;;
 *) echo; echo "$num is not a valid option"; enter;
esac
}

while :
do
	apk_opt_script
done
