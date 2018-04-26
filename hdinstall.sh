#!/bin/bash

# update pip update source
sudo cp ./etc/pip.conf /etc/

# update apt update source
sudo cp -r ./etc/apt/* /etc/apt/

# install libAvahi
sudo apt-get -y install libavahi-compat-libdnssd-dev

# install homebridge
sudo hassbian-config install homebridge

# update npm update soure
sudo npm config set registry https://registry.npm.taobao.org

# install cloud9
sudo hassbian-config install cloud9
