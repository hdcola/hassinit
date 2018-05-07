#!/bin/bash

echo "git clone LCD-show"
git clone https://github.com/hdcola/LCD-show.git
cd LCD-show
chmod +x *
./LCD35-show
echo "setterm -blank 0 -powerdown 0 " | sudo tee -a  /etc/bash.bashrc
echo "setterm -powersave off" | sudo tee -a  /etc/bash.bashrc
