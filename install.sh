#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Bad usage: install.sh user"
  echo "user: the user for which you want to install the service"
  exit 1
fi

service='low-battery'
chmod +x "$service"
cp ./${service}.conf /etc/
mkdir -p /usr/share/low-battery
cp ./*.wav /usr/share/low-battery
cp ./$service /usr/local/bin/$service
sed "s/USER/$1/" < $service.service > /lib/systemd/system/$service.service
systemctl enable "$service"
systemctl start "$service"
