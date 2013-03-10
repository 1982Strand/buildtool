#!/bin/bash

mods=~/buildtool/mods
target=~/buildtool/apk_in/decompiled

echo ""
echo "Adding Center Clock to MiuiSystemUI.apk (Patchrom)"
echo ""

patch -i $mods/centerclock/status_bar_patchrom.diff $target/MiuiSystemUI.apk/res/layout/status_bar.xml

