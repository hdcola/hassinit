sudo mkdir /home/homeassistant/homebridge
sudo cp -r ./homebridge/* /home/homeassistant/homebridge/
sudo chown -R homeassistant.homeassistant /home/homeassistant/homebridge

sudo mkdir /home/homeassistant/homeassistant
sudo cp -r ./homeassistant.nofrp/* /home/homeassistant/homeassistant/
sudo chown -R homeassistant.homeassistant /home/homeassistant/homeassistant

sudo systemctl daemon-reload
sudo systemctl restart homebridge.service
sudo systemctl restart home-assistant@homeassistant.service
