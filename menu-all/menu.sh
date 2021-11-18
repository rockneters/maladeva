#!/bin/bash
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
echo -e " ISP NAME • REGION    : $ISP • $CITY"
echo -e " CPU MODEL • FREQ     :$cname • $freq MHz "
echo -e " HARI • TANGGAL • JAM : $hari • $tnggl • $jam"
echo -e " Domain • IP          : $DOMAIN • $IPVPS"
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "                       ┃• PANEL OPTIONS •┃                     " |lolcat
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "[0l] • PANEL SH & OpenVPN                [05] • PANEL SSR & SS"
echo -e "[02] • PANEL WIREGUARD                   [06] • PANEL VMESS"
echo -e "[03] • PANEL L2TP & PPTP                 [07] • PANEL VLESS"
echo -e "[04] • PANEL SSTP                        [08] • PANEL TROJAN"
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "                       ┃• QUICK SHORTCUT •┃                      " | lolcat
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "|>   SSH   <|             |>  VMESS  <|             |> TROJAN <|"
echo -e "[11] • ADD                [15] • ADD                [19] • ADD"
echo -e "[12] • TRIAL              [16] • TRIAL              [20] • TRIAL"
echo -e "[13] • LIST               [17] • LIST               [21] • LIST"
echo -e "[14] • LOGIN              [18] • LOGIN              [22] • LOGIN"
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e "[99] • SYSTEM MENU                                  [00] • EXIT "
echo -e "═════════════════════════════════════════════════════════════════" | lolcat
echo -e ""
read -p "Select From Options Number? :  " menu
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
#rm -rf paket.sh && apt install curl && wget https://raw.githubusercontent.com/rockneters/maladeva/main/menu-all/paket.sh && apt install dos2unix && dos2unix paket.sh && chmod +x paket.sh && ./paket.sh
;;
29)
systemctl restart shadowsocks-libev-server@tls && systemctl restart shadowsocks-libev-server@http
;;
99)
menu-sistem
;;
00 | 0)
exit
;;
*)
echo "Nomor yang Anda pilih tidak ada dalam MENU !"
menu
;;
esac
