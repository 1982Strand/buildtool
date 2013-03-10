#!/bin/bash

mods=~/buildtool/mods
target=~/buildtool/apk_in/decompiled

echo ""
echo "[--- Activating Emoji in Mms.apk ---]"
echo ""

patch -i $mods/Mms/bools.diff $target/Mms.apk/res/values/bools.xml
