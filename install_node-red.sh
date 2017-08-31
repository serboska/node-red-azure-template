#!/bin/bash
# This script can be used together with azure deployment template to install Node-Red and its prerequirements
# finally Node-Red is started

sudo apt-get install nodejs-legacy
sudo apt-get install npm
sudo npm install -g --unsafe-perm node-red node-red-admin
npm install -g node-red-contrib-azure-iot-hub

# start Node-Red
node-red
