#!/bin/bash

mods=~/buildtool/mods
target=~/buildtool/apk_in/decompiled

echo ""
echo "Adding Transparent Statusbar to Stock SystemUI.apk"
echo ""

patch -i $mods/stock_transparent_statusbar/tw_super_status_bar.diff $target/SystemUI.apk/res/layout/tw_super_status_bar.xml
patch -i $mods/stock_transparent_statusbar/drawables.diff $target/SystemUI.apk/res/values/drawables.xml

