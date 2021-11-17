#!/bin/bash
source /var/lib/premium-script/settvps.conf
clear

ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
Login=trial-`</dev/urandom tr -dc X-Z0-9 | head -c3`
read -p "Expired (Jam): " xpjam
Pass=1234
exp1=`date -d "$xpjam hour" +"%R"`
useradd -e `date -d "$xpjam hour" +"%R"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo "#SSH $Login $exp1 $Pass" >> /etc/akun.conf
echo ""
read -p "Select 1 for Non-GCP and 2 for GCP :  " pilih
echo -e ""
case $pilih in
1)
clear
echo ""
echo "Success!"
echo "============================" | lolcat
echo " $OWNER " | lolcat
echo "    Trial SSH & OpenVPN" | lolcat
echo "==========================" | lolcat
echo "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo "Username       : $Login "
echo "Password       : $Pass"
echo "Masa Aktif     : $xpjam Jam"
echo "Aktif Sampai   : $exp1 WIB"
echo "==========================" | lolcat
echo "ISP Server     : $ISP"
echo "Host           : $domain"
echo "IP Server      : $IP"
echo "Dropbear       : 109, 143"
echo "WEBSOCKET TLS  : $wstls"
echo "SSL/TLS        : $ssl"
echo "Squid          : $sqd"
echo "Badvpn         : $badvpn"
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
echo "Success!"
echo "==========================" | lolcat
echo "${OWNER}"
echo "     • SSH OpenVPN •      "
echo "==========================" | lolcat
echo "Username    : $Login "
echo "Password    : $Pass"
echo "Masa Aktif  : $xpjam Jam"
echo "Expired     : $exp1"
echo "==========================" | lolcat
echo "Host        : ${dgcp}.rocknetvpn.my.id"
echo "Port        : $pgcp"
echo "BadVPN      : $badvpn"
echo "==========================" | lolcat
echo "${PESAN}"
echo ""
;;
*)
read -p "Select 1 for Non-GCP and 2 for GCP :  " pilih
;;
esac
