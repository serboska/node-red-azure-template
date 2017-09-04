#!/bin/bash
# This script can be used together with azure deployment template to install Node-Red and its prerequirements
# finally Node-Red is started

sudo DEBIAN_FRONTEND=noninteractive apt-get update -y
sudo apt-get install -y nodejs
sudo apt-get install -y npm
sudo npm install -g node-red
sudo npm install -g node-red-contrib-azure-iot-hub

# start Node-Red
screen node-red
