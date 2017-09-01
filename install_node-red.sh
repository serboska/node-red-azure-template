#!/bin/bash
# This script can be used together with azure deployment template to install Node-Red and its prerequirements
# finally Node-Red is started

sudo apt-get update -y
sudo apt-get install -y nodejs-legacy
sudo apt-get install -y npm
sudo npm install -g --unsafe-perm node-red node-red-admin
sudo npm install -g node-red-contrib-azure-iot-hub

# start Node-Red
node-red
