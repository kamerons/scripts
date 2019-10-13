#!/bin/bash

#get Google Chrome Repository
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

#get yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

#install jdk
sudo add-apt-repository ppa:openjdk-r/ppa

sudo apt-get update

sudo apt-get -y install vim gedit opam git google-chrome-stable xclip nodejs yarn \
libsecret-1-dev libgconf-2-4  oracle-java8-installer openjdk-8-jdk snapd screen

sudo snap install intellij-idea-community --classic
sudo snap install --classic code

sudo echo "fs.inotify.max_user_watches = 524288" >> /etc/sysctl.conf
sudo sysctl -p --system

git config --global credential.helper store
