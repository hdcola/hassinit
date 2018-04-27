#!/bin/bash

echo "git clone LCD-show"
git clone https://github.com/hdcola/LCD-show.git
cd LCD-show
chmod +x *
./LCD35-show
sudo echo "setterm -blank 0 -powerdown 0 " >> /etc/bash.bashrc
