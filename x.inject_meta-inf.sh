#!/bin/bash

if ! [[ -s tmp ]] ; then
	mkdir tmp
fi
cd ~/buildtool/apk_in
for file in *.apk ; do
unzip -o $file META-INF/* -d ~/buildtool/tmp/$file
done
#for file in *.apk ; do
#unzip -o $file AndroidManifest.xml -d ~/buildtool/tmp/$file
#done

cd ~/buildtool/tmp

for file in *.apk ; do
7za u -r -mx0 -tzip ~/buildtool/apk_in/decompiled/$file/dist/$file ~/buildtool/tmp/$file/*
done

cd ~/buildtool/apk_in/decompiled

for file in *.apk ; do
cp -r -f $file/dist/$file ~/buildtool/apk_out
done

rm -r ~/buildtool/tmp
cd ~/buildtool
