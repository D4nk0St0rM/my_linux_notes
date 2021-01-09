#!/bin/bash

    #### D4nk0St0rM
    #### support not exploit, spread love, share knowledge, help others

set -x

### from github

sudo git clone https://github.com/khast3x/h8mail /opt/h8mail
sudo git clone https://github.com/leebaird/discover /opt/discover
sudo git clone https://github.com/21y4d/nmapAutomator.git /opt/nmapAutomator
sudo git clone https://github.com/TheRook/subbrute.git /opt/subbrute
sudo git clone https://github.com/laramies/theHarvester.git /opt/theHarvester
sudo git clone https://github.com/AonCyberLabs/Windows-Exploit-Suggester.git /opt/windows-exploit-suggester
# - Review : sudo git clone https://github.com/trimstray/htrace.sh.git /opt/htrace
sudo git clone https://github.com/vulnersCom/nmap-vulners.git /usr/share/nmap/scripts/

### from sources.list
sudo apt-get install seclists -y 
sudo apt-get install linux-headers-$(uname -r)
sudo apt-get install hcxdumptool -y
sudo apt-get install hcxtools -y
sudo apt-get install dnsutils -y
sudo apt-get install exiftool -y
