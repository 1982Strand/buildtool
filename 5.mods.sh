#!/bin/bash

hme=~/buildtool
mods=~/buildtool/mods
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
echo "|x - Back to Menu                                                |"
echo "|----------------------------------------------------------------|"
printf %s " Select an Option: "
read -p " " answer
    case $answer in
       0) break ;;
       1) clear
       . $mods/center_clock.sh
       ;;
       2) clear
       . $mods/mms.sh
       ;;
       3) clear
       . $mods/3way.sh
       ;;
       4) clear
       . $mods/crt-off.sh
       ;;
       5) clear
       . $mods/stock_centerclock.sh
       ;;
       6) clear
       . $mods/stock_transparent_statusbar.sh
       ;;
       7) clear
       . $mods/3way_official.sh
       ;;
       8) clear
       . $mods/crt-off_official.sh
       ;;
       x) clear
       . $hme/build
       ;;
       *) break ;;
   esac
   echo ""
   echo "" 
   echo "[--- Press RETURN for menu ---]"
   read key
done
exit 0
