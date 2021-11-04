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
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "                    ┃• INFORMATION SERVER •┃                  " |lolcat
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e " • ISP Name  : $ISP              • RAM     : $tram MB"
echo -e " • City      : $CITY             • Waktu   : $jam"
echo -e " • CPU Model :$cname             • Tanggal : $tnggl"
echo -e " • Cores     : $cores            • IP VPS  : $IPVPS"
echo -e " • CPU Freq  :$freq MHz          • Domain  : $DOMAIN"
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
echo -e " [9] • SETTING VPS                    [19] • Speedtest VPS"
echo -e "[10] • Add Domain/Host                [20] • Info Display System"
echo -e "[11] • Change Port                    [21] • Info Script Install"
echo -e "[12] • Autobackup Data VPS            [22] • Clear Log"
echo -e "[13] • Backup Data VPS                [23] • Auto Reboot"
echo -e "[14] • Restore Data VPS               [24] • Pointing VPS"
echo -e "[15] • Webmin Menu                    [25] • Service Status"
echo -e "[16] • Limit Bandwith Server          [26] • Cek Bandwidth VPS"
echo -e "[17] • Check Usage of Ram             [27] • Install BBR" 
echo -e "[18] • Reboot VPS                     [28] • Install Update"
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "[ x ]   Exit                                                " | lolcat
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
ram
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
18)
reboot
;;
19)
speedtest
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
20)
info
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
21)
about
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
22)
clear-log
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
23)
autoreboot
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
24)
pointing
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
25)
geo
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
26)
bw
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
27)
bbr
read -p "Tekan ENTER untuk kembali ke MENU"
menu
;;
28)
rm -rf paket.sh && apt install curl && wget https://raw.githubusercontent.com/rockneters/maladeva/main/menu-all/paket.sh && apt install dos2unix && dos2unix paket.sh && chmod +x paket.sh && ./paket.sh
;;
29)
systemctl restart shadowsocks-libev-server@tls && systemctl restart shadowsocks-libev-server@http
;;
x)
exit
;;
*)
clear
menu
;;
esac
