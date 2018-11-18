#!/bin/bash

wget https://github.com/fatedier/frp/releases/download/v0.21.0/frp_0.21.0_linux_arm.tar.gz

tar xzvf frp_0.21.0_linux_arm.tar.gz

sudo cp frp_0.21.0_linux_arm/frpc /usr/local/bin/frpc.0.21.0

sudo ln -s /usr/local/bin/frpc.0.21.0 /usr/local/bin/frpc

sudo cp -r ./frp /home/homeassistant/

sudo chown -R homeassistant.homeassistant /home/homeassistant/frp

echo "update apt db"
sudo apt-get update

# echo "update hassbian-script"
# sudo hassbian-config upgrade hassbian-script

echo "update hassbian system"
sudo hassbian-config upgrade hassbian

#sudo apt --fix-broken install
