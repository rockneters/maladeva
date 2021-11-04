#!/bin/bash
source /var/lib/premium-script/settvps.conf
echo "Permission Accepted"
sleep 1
clear
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

#ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
#sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
sleep 1
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
clear

echo "Success!"
echo "==========================" | lolcat
echo "${OWNER}"
echo "     • SSH OpenVPN •      "
echo "==========================" | lolcat
echo "Username    : $Login "
echo "Password    : $Pass"
echo "==========================" | lolcat
echo "Host        : $domain"
echo "IP Server   : $IP"
echo "OpenSSH     : 22"
echo "Dropbear    : $db"
echo "SSL/TLS     : $ssl"
echo "Port Squid  : $sqd"
echo "OpenVPN     : TCP $ovpn http://$IP:81/client-tcp-$ovpn.ovpn"
echo "OpenVPN     : UDP $ovpn2 http://$IP:81/client-udp-$ovpn2.ovpn"
echo "OpenVPN     : SSL $ssl http://$IP:81/client-tcp-ssl.ovpn"
echo "badvpn      : $badvpn"
echo "===========================" | lolcat
echo "Masa Aktif  : $masaaktif Hari"
echo "Expired     : $exp"
echo "==========================" | lolcat
echo "${PESAN}"
echo ""