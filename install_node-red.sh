#!/bin/bash
# This script can be used together with azure deployment template to install Node-Red and its prerequirements
# finally Node-Red is started

apt-get update -y
curl -sL https://deb.nodesource.com/setup_4.x | -E bash -
apt-get install -y nodejs build-essential
apt-get install -y npm
npm install -g --unsafe-perm node-red
npm install -g --unsafe-prem node-red-contrib-azure-iot-hub

# register Node-Red as a Service and start it
cat <<EOT >> /etc/systemd/system/node-red.service
[Unit]
Description=Node-RED
After=syslog.target network.target

[Service]
ExecStart=/usr/bin/node-red
Restart=on-failure
KillSignal=SIGINT

# log output to syslog as 'node-red'
SyslogIdentifier=node-red
StandardOutput=syslog

# non-root user to run as
WorkingDirectory=/home/$1/
User=$1
Group=$1

[Install]
WantedBy=multi-user.target
EOT

systemctl enable node-red
systemctl start node-red
