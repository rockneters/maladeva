#!/bin/bash
source /var/lib/premium-script/settvps.conf
echo "Permission Accepted"
sleep 1
clear
figlet PANEL VLESS | lolcat
echo -e "══════════════════════════════════════════════════════════" | lolcat
echo -e "                     ┃V2RAY VLESS MENU┃                   " |lolcat
echo -e "══════════════════════════════════════════════════════════" | lolcat
echo -e "  [1] • Create Vless Websocket Account"
echo -e "  [2] • Deleting Vless Websocket Account"
echo -e "  [3] • Renew Vless Account "
echo -e "  [4] • Check User Login Vless"
echo -e "  [5] • Trial Vless Account"
echo -e "══════════════════════════════════════════════════════════" | lolcat
echo -e "  [x] • MENU"
echo -e "══════════════════════════════════════════════════════════" | lolcat
echo -e ""
read -p "Please Input Number  [ 1-4 or x ] :  "  vless
echo -e ""
case $vless in
1)
add-vless
read -p "Tekan ENTER untuk kembali"
vleess
;;
2)
del-vless
read -p "Tekan ENTER untuk kembali"
vleess
;;
3)
renew-vless
read -p "Tekan ENTER untuk kembali"
vleess
;;
4)
cek-vless
read -p "Tekan ENTER untuk kembali"
vleess
;;
5)
trial-vless
read -p "Tekan ENTER untuk kembali"
vleess
;;
x)
exit
;;
*)
clear
menu
;;
esac
