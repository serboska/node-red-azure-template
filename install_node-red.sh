#!/bin/bash
# This script can be used together with azure deployment template to install Node-Red and its prerequirements
# finally Node-Red is started

DEBIAN_FRONTEND=noninteractive apt-get update -y
DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs-legacy
DEBIAN_FRONTEND=noninteractive apt-get install -y npm
DEBIAN_FRONTEND=noninteractive npm install -g --unsafe-perm node-red node-red-admin
DEBIAN_FRONTEND=noninteractive npm install -g --unsafe-prem node-red-contrib-azure-iot-hub

# start Node-Red
screen node-red
