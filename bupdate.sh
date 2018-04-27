#!/bin/bash

echo "update apt db"
sudo apt-get update

echo "update hassbian-script"
sudo hassbian-config upgrade hassbian-script

echo "update hassbian system"
sudo hassbian-config upgrade hassbian
