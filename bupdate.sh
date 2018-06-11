#!/bin/bash

wget https://github.com/fatedier/frp/releases/download/v0.18.0/frp_0.18.0_linux_arm.tar.gz

tar xzvf frp_0.18.0_linux_arm.tar.gz

sudo cp frp_0.18.0_linux_arm/frpc /usr/local/bin/

sudo cp -r ./frp /home/homeassistant/

sudo chown -R homeassistant.homeassistant /home/homeassistant/frp

echo "update apt db"
sudo apt-get update

echo "update hassbian-script"
sudo hassbian-config upgrade hassbian-script

echo "update hassbian system"
sudo hassbian-config upgrade hassbian

#sudo apt --fix-broken install
