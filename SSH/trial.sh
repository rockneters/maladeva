#!/bin/bash
source /var/lib/premium-script/settvps.conf
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
echo ""
echo "Success!"
echo "==========================" | lolcat
echo " $OWNER " 
echo "   TRIAL SSH & OpenVPN" 
echo "==========================" | lolcat
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "Informasi Trial SSH & OpenVPN"
echo -e "Username   : $Login "
echo -e "Password   : $Pass"
echo -e "Masa Aktif : $masaaktif hari"
echo -e "Expaired   : $exp"
echo "==========================" | lolcat
echo "ISP Server     : $ISP"
echo "Host           : $domain"
echo "IP Server      : $IP"
echo "Dropbear       : 109, 143"
echo "WS TLS         : $wstls"
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
