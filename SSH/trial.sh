#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
domain=$(cat /etc/v2ray/domain)
echo "Checking VPS"
clear
IP=$(wget -qO- icanhazip.com);
#ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
#sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
masaaktif="1"
Pass=1234
echo Cek Hak Akses...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "Success!"
echo -e "===============================" | lolcat
echo -e "SSH OpenVPN Account Configuration"
echo -e "===============================" | lolcat
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "Informasi Trial SSH & OpenVPN"
echo -e "Username   : $Login "
echo -e "Password   : $Pass"
echo -e "===============================" | lolcat
echo -e "Host           : $domain"
echo -e "IP Server  : $IP"
echo -e "Dropbear   : 109, 143"
echo -e "SSL/TLS    : 443"
echo -e "OpenVPN    : TCP $ovpn http://$IP:81/client-tcp-$ovpn.ovpn"
echo -e "OpenVPN    : UDP $ovpn2 http://$IP:81/client-udp-$ovpn2.ovpn"
echo -e "OpenVPN    : SSL 442 http://$IP:81/client-tcp-ssl.ovpn"
echo -e "badvpn     : 7100-7300"
echo -e "===============================" | lolcat
echo -e "Masa Aktif   : $masaaktif hari"
echo -e "Aktif Sampai : $exp"
echo -e "===============================" | lolcat
echo -e "Terima kasih banyak"
echo -e "By. Rocknet Store | VPN"
echo -e ""
