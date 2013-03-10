#!/bin/bash

cleanup_all() {
   
rm -f -r ~/buildtool/apk_in/*
rm -f -r ~/buildtool/apk_out/*

cd ~/buildtool/apk_in
mkdir decompiled

rm -f -r ~/buildtool/mods/out/*
 
}
