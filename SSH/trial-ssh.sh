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
clear
echo -e "Success!"
echo -e "============================" | lolcat
echo -e " $OWNER " | lolcat
echo -e "    Trial SSH & OpenVPN" | lolcat
echo -e "============================" | lolcat
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e "Username       : $Login "
echo -e "Password       : $Pass"
echo -e "============================" | lolcat
echo -e "ISP Server     : $ISP"
echo -e "Host           : $domain"
echo -e "IP Server      : $IP"
echo -e "Dropbear       : 109, 143"
echo -e "SSL/TLS        : $ssl"
echo -e "Squid          : $sqd"
echo -e "OpenVPN TCP    : http://$IP:81/client-tcp-$ovpn.ovpn"
echo -e "OpenVPN UDP    : http://$IP:81/client-udp-$ovpn2.ovpn"
echo -e "OpenVPN SSL    : http://$IP:81/client-tcp-ssl.ovpn"
echo -e "badvpn         : $badvpn"
echo -e "============================" | lolcat
echo -e "Masa Aktif     : $xpjam Jam"
echo -e "Aktif Sampai   : $exp1 WIB"
echo -e "============================" | lolcat
echo -e "$PESAN"
echo -e ""
