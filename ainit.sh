#!/bin/bash

echo "stop install_homeassistant"
sudo systemctl daemon-reload
sudo systemctl stop install_homeassistant.service

echo "update pip update source"
sudo cp ./etc/pip.conf /etc/

echo "update apt update source"
sudo cp -r ./etc/apt/* /etc/apt/

echo "chown srv/homeassistant to homeassistant"
sudo chown -R homeassistant:homeassistant /srv/homeassistant

echo "start install_homeassistant"
sudo systemctl start install_homeassistant.service
