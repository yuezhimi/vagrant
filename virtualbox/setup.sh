#!/usr/bin/env sh

# install some tools
sudo yum -y install git vim gcc glibc-static telnet psmisc

# install docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
if  [ ! $(getent group docker) ]; then
    sudo groupadd docker;
else
    echo "docker user group already exists"
fi
sudo gpasswd -a $USER docker
sudo service docker restart
# sudo systemctl enable docker
# rm -f get-docker.sh


