#!/bin/bash

#7za u -r -mx0 -tzip MIUIStats.apk resources.arsc.

ind=~/buildtool
ud=~/buildtool/apk_out
dec=~/buildtool/apk_in/decompiled
log=~/buildtool/log

echo ""
echo "[--- Injecting Modified Resources ---]"
echo ""

cat /dev/null > $log/inject_log.txt
cd $ind/apk_in
for apk in *.apk; do
cp -f -r $apk $ud
echo "Injecting res, resources.arsc and classes.dex for $apk "
7za u -r -mx0 -tzip $ud/$apk $dec/$apk/build/apk/resources.arsc 2>&1 | tee -a $log/inject_log.txt
7za u -r -mx0 -tzip $ud/$apk $dec/$apk/build/apk/classes.dex 2>&1 | tee -a $log/inject_log.txt
7za u -r -mx0 -tzip $ud/$apk $dec/$apk/build/apk/res 2>&1 | tee -a $log/inject_log.txt
done
cd $ind
