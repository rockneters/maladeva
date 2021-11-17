#!/bin/bash
source /var/lib/premium-script/settvps.conf
echo "Permission Accepted"
sleep 1
clear
echo ""
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
exp1=`date -d "$masaaktif days" +"%d-%m-%Y"`
echo "#SSH $Login $exp1 $Pass" >> /etc/akun.conf
echo ""
read -p "Select 1 for Non-GCP and 2 for GCP :  " pilih
echo -e ""
case $pilih in
1)
clear
echo ""
echo "Success!"
echo "==========================" | lolcat
echo "${OWNER}"
echo "     • SSH OpenVPN •      "
echo "==========================" | lolcat
echo "Username    : $Login "
echo "Password    : $Pass"
echo "Masa Aktif  : $masaaktif Hari"
echo "Expired     : $exp1"
echo "==========================" | lolcat
echo "Host        : $domain"
echo "IP Server   : $IP"
echo "OpenSSH     : 22"
echo "Dropbear    : $db"
echo "WS TLS      : $wstls"
echo "SSL/TLS     : $ssl"
echo "Port Squid  : $sqd"
echo "badvpn      : $badvpn"
echo "==========================" | lolcat
echo "PAYLOAD WS  :"
echo "GET / HTTP/1.1[crlf]Host: ${domain}[crlf]Upgrade: websocket[crlf][crlf]"
echo "==========================" | lolcat
echo "Download FIle OpenVPN"
echo "TCP $ovpn   : http://$IP:81/client-tcp-$ovpn.ovpn"
echo "UDP $ovpn2  : http://$IP:81/client-udp-$ovpn2.ovpn"
echo "SSL $ssl    : http://$IP:81/client-tcp-ssl.ovpn"
echo "=========================" | lolcat
echo "${PESAN}"
echo ""
;;
2)
read -p "Sub Domain GCP : " dgcp
read -p "Port GCP : " pgcp
clear
echo ""
echo "Success!"
echo "=========================" | lolcat
echo "${OWNER}"
echo "     • SSH OpenVPN •      "
echo "=========================" | lolcat
echo "Username    : $Login "
echo "Password    : $Pass"
echo "Masa Aktif  : $masaaktif Hari"
echo "Expired     : $exp1"
echo "=========================" | lolcat
echo "Host        : ${dgcp}.rocknetvpn.my.id"
echo "Port        : $pgcp"
echo "BadVPN      : $badvpn"
echo "=========================" | lolcat
echo "${PESAN}"
echo ""
;;
*)
read -p "Select 1 for Non-GCP and 2 for GCP :  " pilih
;;
esac
