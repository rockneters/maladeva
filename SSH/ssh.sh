#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
clear
figlet PANEL SSH | lolcat -d 4
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e "                    ┃SSH & OPENVPN MENU┃                  " |lolcat
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e "   [1] • Create SSH & OpenVPN Account"
echo -e "   [2] • Trial Account SSH & OpenVPN"
echo -e "   [3] • Renew SSH & OpenVPN Account"
echo -e "   [4] • Delete SSH & OpenVPN Account"
echo -e "   [5] • Check User Login SSH & OpenVPN"
echo -e "   [6] • List Member SSH & OpenVPN"
echo -e "   [7] • Delete User Expired SSH & OpenVPN"
echo -e "   [8] • Set up Autokill SSH"
echo -e "   [9] • Cek Users Who Do Multi Login SSH"
echo -e "  [10] • Restart Service OpenVPN dan SSH"
echo -e "  [11] • Ubah Pswword User"
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e "   [X] • MENU"
echo -e "╠══════════════════════════════════════════════════════════╣" | lolcat
echo -e ""
read -p "Please Input Number  [1-10 or x] :  "  ssh
echo -e ""
case $ssh in
1)
usernew
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
2)
trial
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
3)
renew
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
4)
hapus
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
5)
cek
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
6)
member
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
7)
delete
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
8)
autokill
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
9)
ceklim
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
10)
restart
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
11)
user-password
read -p "Tekan ENTER untuk kembali..!"
ssh
;;
x)
exit
;;
*)
clear
menu
;;
esac
