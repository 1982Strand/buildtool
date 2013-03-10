#!/bin/bash

H=~/buildtool
d=$H/apk_in
dd=$d/decompiled
log=~/buildtool/log

shopt -s failglob
echo "[--- Choose apk number, or x to exit ---]"
echo
cd $d
select file in *.apk
do
    cat /dev/null > $log/decompile_log.txt
    [[ $REPLY == x ]] && . $H/build
    [[ -z $file ]] && echo "Invalid choice" && continue
    echo
    echo "Decompiling $file" 2>&1 | tee -a $log/decompile_log.txt
    apktool d -f "$file" $dd/$file
    cp -f $H/sort.py $dd/$file
    python $dd/$file/sort.py
    rm -r $dd/$file/sort.py
done
