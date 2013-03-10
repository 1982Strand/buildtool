#!/bin/bash

echo ""
echo "[--- Zipaligning apks ---]"
echo ""

cd ~/buildtool/apk_out

	for a in *.apk; do 
	echo "Zipaligning $a" 
	echo
	zipalign -f 4 $a $a.aligned
                rm $a
                mv $a.aligned $a
	echo
	done
cd ~/buildtool
