#!/bin/bash
source /var/lib/premium-script/settvps.conf
echo "Permission Accepted"
sleep 1
clear

echo "Renew SSH & Openvpn Account"
echo "==========================" | lolcat
read -p "Username       :  " User
egrep "^$User" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
read -p "Day Extend     :  " Days
Today=`date +%s`
Days_Detailed=$(( $Days * 86400 ))
Expire_On=$(($Today + $Days_Detailed))
Expiration=$(date -u --date="1970-01-01 $Expire_On sec GMT" +%Y/%m/%d)
Expiration_Display=$(date -u --date="1970-01-01 $Expire_On sec GMT" '+%d %b %Y')
passwd -u $User
usermod -e  $Expiration $User
egrep "^$User" /etc/passwd >/dev/null
echo -e "$Pass\n$Pass\n"|passwd $User &> /dev/null
clear

echo "Renew SSH & Openvpn Account"
echo "==========================" | lolcat
echo "Username        :  $User"
echo "Days Added      :  $Days Days"
echo "Expires on      :  $Expiration_Display"
echo "==========================" | lolcat
else
clear
echo "Renew SSH & Openvpn Account"
echo "==========================" | lolcat
echo ""
echo "   Username Doesnt Exist  "
echo ""
echo "==========================" | lolcat
fi
