#!/bin/bash
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
clear 

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
IPVPS=$(curl -s ipinfo.io/ip )
DOMAIN=$(cat /etc/v2ray/domain)
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
jam=$(date +"%T")
hari=$(date +"%A")
tnggl=$(date +"%d-%B-%Y")
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
clear
figlet ROCKNET VPN | lolcat
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "                    ┃• INFORMATION SERVER •┃                  " |lolcat
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e " • ISP Name : $ISP • City : $CITY • Cores : $cores"
echo -e " • CPU Model : $cname  • RAM : $tram MB • FREQ : $freq"
echo -e " • Tanggal : $tnggl • Hari : $hari • Waktu : $jam"
echo -e " • IP VPS  : $IPVPS • Domain  : $DOMAIN"
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "                       ┃• PANEL OPTIONS •┃                     " |lolcat
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e " [l] • SSH & OpenVPN                   [5] • SSR & SS Account"
echo -e " [2] • WIREGUARD                       [6] • VMESS"
echo -e " [3] • L2TP & PPTP Account             [7] • VLESS"
echo -e " [4] • SSTP  Account                   [8] • TROJAN"
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "                        ┃• SYSTEM MENU •┃                      " | lolcat 
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "[ 9] • SETTING VPS                    [18] • Speedtest VPS"
echo -e "[10] • Add Domain/Host                [19] • Info Display System"
echo -e "[11] • Change Port                    [20] • Info Script Install"
echo -e "[12] • Autobackup Data VPS            [21] • Clear Log"
echo -e "[13] • Backup Data VPS                [22] • Auto Reboot"
echo -e "[14] • Restore Data VPS               [23] • Pointing VPS"
echo -e "[15] • Webmin Menu                    [24] • Service Status"
echo -e "[16] • Limit Bandwith Server          [25] • Cek Bandwidth VPS"
echo -e "[17] • Reboot VPS                     [26] • Update Script" 
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "[ x ]   Exit                                                "
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e ""
read -p "Select From Options [ 1-28 or x ] :  " menu
echo -e ""
case $menu in
1)
ssh
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
2)
wgr
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
3)
l2tp
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
4)
sstpp
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
5)
ssssr
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
6)
v2raay
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
7)
vleess
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
8)
trojaan
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
9)
format
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
10)
panel-domain
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
11)
change-port
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
12)
autobackup
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
13)
backup
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
14)
restore
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
15)
wbmn
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
16)
limit-speed
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
17)
reboot
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
18)
speedtest
;;
19)
info
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
20)
about
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
21)
clear-log
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
22)
autoreboot
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
23)
pointing
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
24)
geo
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
25)
bw
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
26)
update
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
x)
exit
;;
*)
clear
menu
;;
esac
