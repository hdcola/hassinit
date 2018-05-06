sudo hassbian-config upgrade cloud9
sudo hassbian-config upgrade homeassistant
sudo hassbian-config upgrade hassbian

sudo systemctl daemon-reload
sudo systemctl restart home-assistant@homeassistant.service
sudo systemctl restart cloud9@homeassistant.service
