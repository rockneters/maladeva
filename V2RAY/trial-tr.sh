#!/bin/bash
clear
source /var/lib/premium-script/settvps.conf
echo "Permission Accepted"
sleep 1
clear

uuid=$(cat /etc/trojan/uuid.txt)
user=trial-`</dev/urandom tr -dc X-Z0-9 | head -c3`
#tr="$(cat ~/log-install.txt | grep -i Trojan | cut -d: -f2|sed 's/ //g')"
tnggl=$(date +"%R")
read -p "Expired (Jam): " masaaktif
exp=`date -d "$masaaktif hour" +"%R"`
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan/config.json
#exp=`date -d "$masaaktif days" +"%d-%m-%Y"`
#created=`date -d "0 days" +"%d-%m-%Y"`
echo -e "### $user $exp" >> /etc/trojan/akun.conf
systemctl restart trojan
trojanlink="trojan://${user}@${domain}:${tr}"
echo "#TROJAN $user $exp" >> /etc/akun.conf
echo ""
read -p "Select 1 for Non-GCP and 2 for GCP :  " pilih
echo -e ""
case $pilih in
1)
clear
echo "Success!"
echo "==========================" | lolcat
echo "${OWNER}"
echo "        • TROJAN •        "
echo "==========================" | lolcat
echo "Remarks    : ${user}"
echo "Host       : ${domain}"
echo "IP         : ${IP}"
echo "port       : ${tr}"
echo "Key        : ${user}"
echo "link       : ${trojanlink}"
echo "==========================" | lolcat
echo "Masa Aktif : $masaaktif Jam"
echo "Expaired   : $exp WIB"
echo "==========================" | lolcat
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
echo "        • TROJAN •        "
echo "==========================" | lolcat
echo "Remarks    : ${user}"
echo "Host       : ${dgcp}"
echo "port       : ${pgcp}"
echo "Key        : ${user}"
echo "link       : trojan://${user}@${dgcp}:${pgcp}"
echo "==========================" | lolcat
echo "Masa Aktif : $masaaktif Jam"
echo "Expaired   : $exp WIB"
echo "==========================" | lolcat
echo "${PESAN}"
echo ""
;;
*)
read -p "Select 1 for Non-GCP and 2 for GCP :  " pilih
;;
esac
