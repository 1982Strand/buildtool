#!/bin/bash

H=~/buildtool
LOG=~/buildtool/log
DEC=~/buildtool/apk_in/decompiled

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
cp $jar/dist/*.jar $H/apk_out
done
cd $H
