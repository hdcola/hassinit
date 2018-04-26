#!/bin/bash

echo "update pip update source"
sudo cp ./etc/pip.conf /etc/

echo "update apt update source"
sudo cp -r ./etc/apt/* /etc/apt/

echo "install libAvahi"
sudo apt-get -y install libavahi-compat-libdnssd-dev

echo "install homebridge"
sudo hassbian-config install homebridge

echo "update npm update soure"
sudo npm config set registry https://registry.npm.taobao.org

echo "install cloud9"
sudo hassbian-config install cloud9
