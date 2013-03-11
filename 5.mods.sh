#!/bin/bash

source functions.sh
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
echo "|                        MODS SECTION                            |"
echo "|                                                                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|                                                                |"
echo "| 1.  MIUI Center Clock                                          |"
echo "| 2.  MIUI Emoji  tabs       - ..But still no emoji :(           |"
echo "| 3.  MIUI 3-Way Reboot                                          |"
echo "| 4.  MIUI CRT-OFF                                               |"
echo "| 5.  Stock Center Clock (From XXELLA)                           |"
echo "| 6.  Stock Transparent Statusbar                                |"
echo "| 7.  MIUI 3-Way Reboot (Official ROM)                           |"
echo "| 8.  MIUI CRT-OFF (Official ROM)                                |"
echo "|                                                                |"
echo "|----------------------------------------------------------------|"
echo "|x - Back to Main  Menu                                          |"
echo "|----------------------------------------------------------------|"
printf %s " Select an Option: "
read -p " " answer
    case $answer in
       0) break ;;
       1) clear
       center_clock
       ;;
       2) clear
       mms
       ;;
       3) clear
       3way
       ;;
       4) clear
       crt_off
       ;;
       5) clear
       stock_centerclock
       ;;
       6) clear
       stock_transparent_statusbar
       ;;
       7) clear
       3way_official
       ;;
       8) clear
       crt-off_official
       ;;
       x) clear
       . $HOME/build
       ;;
       *) break ;;
   esac
   echo ""
   echo "" 
   echo "[--- Press RETURN for menu ---]"
   read key
done
exit 0
