#!/bin/bash

mods=~/buildtool/mods
target=~/buildtool/apk_in/decompiled

echo ""
echo "Adding Center Clock to Stock SystemUI.apk"
echo ""

patch -i $mods/stock_centerclock/tw_status_bar.diff $target/SystemUI.apk/res/layout/tw_status_bar.xml

