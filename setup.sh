#!/bin/bash
RED='\e[1;31m'
GREEN='\e[0;32m'
BLUE='\e[0;34m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo -e  "${RED}Checking VPS${NC}"
sleep 1
echo -e "${GREEN}Permission Accepted...${NC}"
sleep 1 
echo -e  "${RED}Checking VPS Domain${NC}"
timedatectl set-timezone Asia/Jakarta
rm -r /etc/v2ray
echo "Memulai install autoscript | Mod by Rocknet Store | VPN..."
sleep 1
mkdir /etc/v2ray
mkdir /var/lib/premium-script
echo "IP=$MYIP" >> /var/lib/premium-script/ipvps.conf
wget -O /var/lib/premium-script/settvps.conf "https://raw.githubusercontent.com/rockneters/maladeva/main/settvps.conf" chmod +x settvps.conf

clear
echo ""
echo -e "Pastikan domain sudah dipersiapkan untuk server Anda"
read -p "Domain : " domain
echo "$domain" >> /etc/v2ray/domain

# go to root
cd
sysctl -w net.ipv6.conf.all.disable_ipv6=1
sysctl -w net.ipv6.conf.default.disable_ipv6=1
apt update
apt install -y bzip2 gzip coreutils screen curl
apt install figlet -y
apt install lolcat -y
gem install lolcat
apt install curl

#install speedtesst
curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
apt-get install speedtest -y
timedatectl set-timezone Asia/Jakarta
clear
cd
#wget https://raw.githubusercontent.com/rockneters/maladeva/main/cf.sh && chmod +x cf.sh && ./cf.sh
#install ssh ovpn
wget https://raw.githubusercontent.com/rockneters/maladeva/main/SSH/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
#install v2ray
cd
wget http://raw.githubusercontent.com/rockneters/maladeva/main/V2RAY/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
cd
wget https://raw.githubusercontent.com/rockneters/maladeva/main/OTHER/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#install ssr
cd
wget https://raw.githubusercontent.com/rockneters/maladeva/main/SSR/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
cd
wget https://raw.githubusercontent.com/rockneters/maladeva/main/SS/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
#installwg
cd
wget https://raw.githubusercontent.com/rockneters/maladeva/main/WG/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
cd
#install L2TP
wget https://raw.githubusercontent.com/rockneters/maladeva/main/OTHER/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
cd
wget https://raw.githubusercontent.com/rockneters/maladeva/main/BR/set-br.sh && chmod +x set-br.sh && ./set-br.sh

cd
wget https://raw.githubusercontent.com/rockneters/maladeva/main/WS/websocket.sh && chmod +x websocket.sh && ./websocket.sh
#wget https://raw.githubusercontent.com/rockneters/maladeva/main/edu/jamal.sh && chmod +x jamal.sh && ./jamal.sh
#wget https://raw.githubusercontent.com/rockneters/maladeva/main/edu/edu.sh && chmod +x edu.sh && screen -S edu ./edu.sh

# Encrypt
#cd
#wget https://raw.githubusercontent.com/rockneters/maladeva/main/enc.sh && chmod +x enc.sh && ./enc.sh

# Antiabuse
cd
wget https://raw.githubusercontent.com/rockneters/maladeva/main/menu-all/antiabuse.sh && chmod +x antiabuse.sh && ./antiabuse.sh
cd /usr/bin
wget -O exp-jam "http://raw.githubusercontent.com/rockneters/maladeva/main/V2RAY/exp-jam.sh" && chmod +x exp-jam
wget -O xp "http://raw.githubusercontent.com/rockneters/maladeva/main/SSH/xp.sh" && chmod +x xp

cd
#rm -f /root/enc.sh
rm -f /root/antiabuse.sh
rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
#rm -f /root/geo.sh
rm -f /root/websocket.sh
rm -f /root/edu.sh
cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=https://geoganteng.tech

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett

wget -O /usr/bin/menu https://raw.githubusercontent.com/rockneters/maladeva/main/menu-all/menu.sh && chmod +x /usr/bin/menu
touch /etc/akun.conf && chmod +x /etc/akun.conf

echo "0 5 * * * root clear-log && reboot" >> /etc/crontab
echo "0 0 * * * root xp" >> /etc/crontab
echo "* * * * * root exp-jam" >> /etc/crontab
service cron restart

#wget -O /etc/set.sh "https://raw.githubusercontent.com/rockneters/maladeva/main/set.sh"
#chmod +x /etc/set.sh
history -c
echo "1.2" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "============-AUTOSCRIPT PREMIUM-=============" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "---------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt
echo "   - Stunnel4                : 222, 777"  | tee -a log-install.txt
echo "   - SSH WS                  : 443"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 2083"  | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 2082"  | tee -a log-install.txt
echo "   - Trojan                  : 2087"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo ""
sleep 10
rm -f setup.sh
read -p "Tekan ENTER untuk Reboot"
reboot
