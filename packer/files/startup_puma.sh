#!/bin/bash

sudo echo -e "[Unit] \nDescription=Puma \n[Service]\nExecStart=/usr/local/bin/puma -d\n[Install]\nWantedBy=multi-user.target" >> /etc/systemd/system/puma.service
sudo systemctl enable puma.service
