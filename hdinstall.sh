#!/bin/bash

sudo cp -r ./etc/systemd/* /etc/systemd/
sudo systemctl daemon-reload

echo "install libAvahi"
sudo apt-get -y install libavahi-compat-libdnssd-dev

echo "install node.js 8.x"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt-get install -y nodejs

echo "update npm"
sudo npm i -g npm

echo "update npm update soure"
sudo -u homeassistant npm config set registry https://registry.npm.taobao.org

echo "install homebridge"
sudo npm install -g --unsafe-perm homebridge

echo "install homebridge-config-ui-x"
sudo npm install -g --unsafe-perm homebridge-config-ui-x

echo "install service"
#sudo cp -r ./etc/systemd/* /etc/systemd/
sudo systemctl daemon-reload
sudo systemctl enable homebridge.service
sudo systemctl start homebridge.service

echo "update sudoers"
sudo cp ./etc/sudoers.d/* /etc/sudoers.d/

echo "install cloud9"
sudo hassbian-config install cloud9

sudo apt-get update
sudo apt-get -y --fix-missing install libav-tools
