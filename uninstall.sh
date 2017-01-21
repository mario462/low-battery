#!/bin/bash

service='low-battery'
systemctl stop "$service"
systemctl disable "$service"
rm /etc/$service.conf
rm -rf /usr/share/low-battery
rm /usr/local/bin/$service
rm /lib/systemd/system/$service.service
