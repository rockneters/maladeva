#!/bin/bash
clear
sleep 1
cd

#Install system auto run
#System OpenSSH Websocket-SSH Python

cd /etc/systemd/system/
wget -O ws-openssh.service https://raw.githubusercontent.com/rockneters/maladeva/main/WS/ws-openssh.service
#System Dropbear Websocket-SSH Python
wget -O ws-dropbear.service https://raw.githubusercontent.com/rockneters/maladeva/main/WS/ws-dropbear.service
#System SSL/TLS Websocket-SSH Python
wget -O ws-stunnel.service https://raw.githubusercontent.com/rockneters/maladeva/main/WS/ws-stunnel.service
##System Websocket-OpenVPN Python
wget -O ws-ovpn.service https://raw.githubusercontent.com/rockneters/maladeva/main/WS/ws-ovpn.service

#Install Script Websocket-SSH Python
cd /usr/bin/
wget -O ws-openssh https://raw.githubusercontent.com/rockneters/maladeva/main/WS/ws-openssh && chmod +x ws-openssh
wget -O ws-dropbear https://raw.githubusercontent.com/rockneters/maladeva/main/WS/ws-dropbear && chmod +x ws-dropbear
wget -O ws-stunnel https://raw.githubusercontent.com/rockneters/maladeva/main/WS/ws-stunnel && chmod +x ws-stunnel
wget -O ws-ovpn https://raw.githubusercontent.com/rockneters/maladeva/main/WS/ws-ovpn && chmod +x ws-ovpn
cd

systemctl daemon-reload
#Enable & Start & Restart ws-openssh service
systemctl enable ws-openssh.service
systemctl start ws-openssh.service
systemctl restart ws-openssh.service

#Enable & Start & Restart ws-dropbear service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service

#Enable & Start & Restart ws-stunnel service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service


#Enable & Start ws-ovpn service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
systemctl restart ws-ovpn.service
