#!/bin/bash

    #### D4nk0St0rM
    #### support not exploit, spread love, share knowledge, help others

echo -e "## This will run hopefully with the updated sources: https://github.com/D4nk0St0rM/simple_linux_tweaks/blob/main/sources.list"

#set -x

echo -e "~#~ GB Keyboard"
sudo setxkbmap -layout gb

echo -e "~#~ update and install gnome themes, git, & python 2 & 3"
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y python3.7 python3-pip python2.7 python-pip
# sudo apt-get dist-upgrade -y
sudo apt-get install dbus-x11 -y
sudo apt-get install gnome-themes-standard -y
# sudo apt-get install kali-linux-large -y


echo -e "~#~ Some structure changes, deleting and creating folders, including two virtual python envs (~/virtualenv/python2, ~/virtualenv/python3)"
rm -r Music/
rm -r Templates/
rm -r Videos/
rm -r Public/
mkdir ~/Documents/vhl
mkdir ~/Documents/htb
mkdir ~/Documents/general
mkdir ~/virtualenv
cd ~/virtualenv
pip3 install virtualenv
virtualenv -p python3 python3
virtualenv -p python2 python2


echo -e "~#~ Alisas in .bashrc for activating python environments: py3act, py2act"
cat << EOF >> ~/.bashrc
alias activate_python2='source ~/virtualenv/python2/bin/activate'
alias activate_python3='source ~/virtualenv/python3/bin/activate'
source ~/virtualenv/python3/bin/activate
EOF
source ~/virtualenv/python3/bin/activate
echo -e ''



