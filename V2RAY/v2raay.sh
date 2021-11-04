#!/bin/bash
RED='\e[1;31m'
GREEN='\e[0;32m'
BLUE='\e[0;34m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo -e  "${RED}Checking VPS${NC}"
sleep 2

clear
figlet PANEL V2RAY | lolcat
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e "                     ┃V2RAY VMESS MENU┃                   " |lolcat
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e "  [1] • Create Vmess Websocket Account"
echo -e "  [2] • Delete Vmess Websocket Account"
echo -e "  [3] • Renew Vmess Account"
echo -e "  [4] • Check User Login Vmess"
echo -e "  [5] • Create Trial Vmess Websocket Account"
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e "  [x] • MENU"   | lolcat
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e ""
read -p "Please Input Number  [ 1-5 or x ] :  "  v2ray
echo -e ""
case $v2ray in
1)
add-ws
read -p "Tekan ENTER untuk kembali"
v2raay
;;
2)
del-ws
read -p "Tekan ENTER untuk kembali"
v2raay
;;
3)
renew-ws
read -p "Tekan ENTER untuk kembali"
v2raay
;;
4)
cek-ws
read -p "Tekan ENTER untuk kembali"
v2raay
;;
5)
trialws
read -p "Tekan ENTER untuk kembali"
v2raay
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
