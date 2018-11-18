echo "copy HomeBridge config"
sudo mkdir /home/homeassistant/homebridge
sudo cp -r ./homebridge/* /home/homeassistant/homebridge/
sudo chown -R homeassistant.homeassistant /home/homeassistant/homebridge

echo "copy HomeAssistant config"
sudo mkdir /home/homeassistant/homeassistant
sudo cp -r ./homeassistant/* /home/homeassistant/homeassistant/
sudo chown -R homeassistant.homeassistant /home/homeassistant/homeassistant
sudo rm -rf /home/homeassistant/.homeassistant

echo "reload homebridge&homeassistant service"
sudo systemctl daemon-reload
sudo systemctl restart homebridge.service
sudo systemctl restart home-assistant@homeassistant.service


echo "ln homeassistant homebridge to cloud9"
sudo rm /home/homeassistant/c9workspace/homeassistant
sudo ln -s /home/homeassistant/homebridge /home/homeassistant/c9workspace/homebridge
sudo ln -s /home/homeassistant/homeassistant /home/homeassistant/c9workspace/homeassistant
