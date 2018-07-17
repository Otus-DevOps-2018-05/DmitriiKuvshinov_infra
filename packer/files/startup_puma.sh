#!/bin/bash
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
sudo echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install

echo -e "[Unit] \nDescription=Puma \n[Service]\nExecStart=/usr/local/bin/puma -d\n[Install]\nWantedBy=multi-user.target" >> /etc/systemd/system/puma.service
sudo systemctl start puma.service
sudo systemctl enable puma.service
