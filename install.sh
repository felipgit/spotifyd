#!/bin/bash

wget https://github.com/Spotifyd/spotifyd/releases/download/v0.2.24/spotifyd-linux-armv6-slim.tar.gz
tar zxf spotifyd-linux-armv6-slim.tar.gz 
sudo mv spotifyd /usr/bin/
sudo mkdir /etc/spotifyd
sudo wget https://raw.githubusercontent.com/Spotifyd/spotifyd/master/contrib/spotifyd.service -O /etc/systemd/system/spotifyd.servicesudo
sudo vi /etc/systemd/system/spotifyd.service
sudo vi /etc/spotifyd/spotifyd.conf
sudo systemctl daemon-reload
sudo systemctl start spotifyd.service 
sudo systemctl enable spotifyd.service 

