#!/bin/bash

set -x
rm -r Music/
rm -r Templates/
rm -r Videos/
rm -r Public/
sudo setxkbmap -layout gb
sudo apt-get update -y
sudo apt install -y openvpn dialog python3-pip python3-setuptools
sudo apt-get install protonvpn-cli -y
sudo apt-get install protonvpn-cli --upgrade -y
sudo apt-get install gdebi-core -y
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo mv google-chrome-stable_current_amd64.deb /opt/google-chrome.deb
sudo gdebi /opt/google-chrome.deb -y
sudo apt-get install -y joplin
sudo git clone https://github.com/khast3x/h8mail /opt/h8mail
sudo git clone https://github.com/leebaird/discover /opt/discover
sudo git clone https://github.com/21y4d/nmapAutomator.git /opt/nmapAutomator
sudo git clone https://github.com/TheRook/subbrute.git /opt/subbrute
sudo git clone https://github.com/laramies/theHarvester.git /opt/theHarvester
sudo touch /etc/apt/sources.list.d/insync.list
sudo apt-get update
sudo apt-get install insync -y
sudo echo "deb http://apt.insync.io/debian buster non-free contrib" > /etc/apt/sources.list.d/insync.list
sudo wget -O vmware.bundle https://www.vmware.com/go/getworkstation-linux
sudo chmod 777 vmware.bundle
sudo ./vmware.bundle
#DOWNLOAD Nessus First
sudo dpkg -i Downloads/Nessus-8.13.0-debian6_amd64.deb
sudo rm Downloads/Nessus-8.13.0-debian6_amd64.deb
sudo apt-get install linux headers-$(uname -r)
sudo usermod -a -G sudo <USERNAME>
sudo git clone https://github.com/vulnersCom/nmap-vulners.git /usr/share/nmap/scripts/
sudo apt-get install npm -y
sudo apt-get install -y python3
sudo apt-get install python3-pip -y
sudo apt install software-properties-common apt-transport-https curl -y
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update
sudo apt install code
sudo apt install hcxdumptool -y
sudo apt install hcxtools -y
sudo apt-get install linux-headers-$(uname -r)
sudo apt-get install hcxdumptool -y
sudo apt-get install hcxtools -y
sudo apt-get update
sudo apt-get upgrade all -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y
touch ~/.hushlogin
clear
exec -l $SHELL
