#!/bin/bash
source /var/lib/premium-script/settvps.conf
echo "Permission Accepted"
sleep 1
clear
figlet PANEL TROJAN | lolcat -d 5
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e "                     ┃V2RAY TROJAN MENU┃                  " |lolcat
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e "[1] • Create Trojan Account"
echo -e "[2] • Deleting Trojan Account"
echo -e "[3] • Renew Trojan Account"
echo -e "[4] • Check User Login Trojan"
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e "[x] • MENU"
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e ""
read -p "Please Input Number  [ 1-4 or x ] :  "  trojan
echo -e ""
case $trojan in
1)
add-tr
read -p "Tekan ENTER untuk kembali"
trojaan
;;
2)
del-tr
read -p "Tekan ENTER untuk kembali"
trojaan
;;
3)
renew-tr
read -p "Tekan ENTER untuk kembali"
trojaan
;;
4)
cek-tr
read -p "Tekan ENTER untuk kembali"
trojaan
;;
x)
exit
;;
*)
clear
menu
;;
esac
