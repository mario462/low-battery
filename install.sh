#!/bin/bash

service='low-battery'
chmod +x "$service"
cp ./${service}.conf /etc/
mkdir -p /usr/share/low-battery
cp ./*.wav /usr/share/low-battery
cp ./$service /usr/local/bin/$service
cp ./$service.service /lib/systemd/system/$service.service
systemctl enable "$service"
systemctl start "$service"
