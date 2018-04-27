#!/bin/bash

echo "stop install_homeassistant"
sudo systemctl stop install_homeassistant.service

echo "update pip update source"
sudo cp ./etc/pip.conf /etc/

echo "update apt update source"
sudo cp -r ./etc/apt/* /etc/apt/

echo "update apt db"
sudo apt-get update

echo "update hassbian-script"
sudo hassbian-config upgrade hassbian-script

echo "update hassbian system"
sudo hassbian-config upgrade hassbian

echo "start install_homeassistant"
sudo systemctl start install_homeassistant.service

# echo "install libAvahi"
# sudo apt-get -y install libavahi-compat-libdnssd-dev

echo "install cloud9"
sudo hassbian-config install cloud9

echo "install node.js 9.x"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

sudo apt-get install -y nodejs

echo "update npm update soure"
sudo npm config set registry https://registry.npm.taobao.org

echo "install homebridge"
sudo npm install -g --unsafe-perm homebridge

echo "install homebridge-config-ui-x"
sudo npm install -g --unsafe-perm homebridge-config-ui-x


echo "install service"
sudo cp -r ./etc/systemd/* /etc/systemd/
sudo systemctl daemon-reload
sudo systemctl enable homebridge.service

echo "update sudoers"
sudo cp ./etc/sudoers.d/* /etc/sudoers.d/
