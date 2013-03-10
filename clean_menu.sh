#!/bin/bash

source $HOME/functions.sh
clear

while [ answer != "0" ] 
do
clear
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                       MIUI building script                     |"
echo "|                                                 -By 1982Strand |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                        Cleaning Options                        |"
echo "|                                                                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "|                                                                |"
echo "| 1.  Clean all folders (in - decompiled - out - mods)           |"
echo "| 2.  Clean all but apk_in folder                                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|x - Return to main menu                                         |"
echo "|----------------------------------------------------------------|"
printf %s " Select an Option: "
read -p " " answer
    case $answer in
       1) clear
       cleanup_all
       ;;
       2) clear
       . $HOME/cleanup_not_apk_in.sh
       ;;
       x) clear
       . $HOME/build
       ;;
       *) break 
       . $HOME/clean_menu.sh
       ;;
   esac
   echo ""
   echo "" 
   echo "[--- Press RETURN for menu ---]"
   read key
done
exit 0
