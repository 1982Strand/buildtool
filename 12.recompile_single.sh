#!/bin/bash

H=~/buildtool
d=$H/apk_in/decompiled
log=~/buildtool/log

shopt -s failglob
echo "[--- Choose apk number, or x to exit ---]"
echo
cd $d
select file in *.apk
do
    cat /dev/null > $log/recompile_log.txt
    [[ $REPLY == x ]] && . $H/build
    [[ -z $file ]] && echo "Invalid choice" && continue
    echo
    echo "Recompiling $file" 2>&1 | tee -a $log/recompile_log.txt
    apktool b -f "$file"
done
