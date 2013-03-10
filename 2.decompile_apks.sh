#!/bin/bash

H=~/buildtool
LOG=~/buildtool/log
DEC=~/buildtool/apk_in/decompiled

echo ""
echo "[--- Decompiling apks/jars ---]"
echo ""

cat /dev/null > $LOG/decompile_log.txt

cd $H/apk_in
for file in *.apk *.jar; do
echo "Decompiling $file" 2>&1 | tee -a $LOG/decompile_log.txt
apktool -q d -f $file $DEC/$file
done
cp -f $H/sort.py $DEC
cd $DEC
python sort.py
rm -r sort.py

cd $H
