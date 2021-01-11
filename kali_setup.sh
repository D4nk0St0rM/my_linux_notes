#!/bin/bash

    #### D4nk0St0rM
    #### support not exploit, spread love, share knowledge, help others

# update https://github.com/D4nk0St0rM/simple_linux_tweaks/blob/main/sources.list
# create user to not require password for sudo [sudo visudo / username ALL=(ALL) NOPASSWD:ALL)
# wallpaper: https://raw.githubusercontent.com/D4nk0St0rM/simple_linux_tweaks/main/wallpaper/Kali_dark_shadow_eye.jpg

echo -e "## Hold on to your hats.... cats"

#set -x
mytools="/opt/mytools"

echo -e "update & upgrade"

sudo apt-get update && apt-get upgrade
sudo apt-get dist-upgrade -y

echo -e "~#~ GB Keyboard"
sudo setxkbmap -layout gb

echo -e "~#~ update and install some fundamental tools for running environment"
sudo apt-get install -y git
# sudo apt-get install -y python3.7 python3-pip python2.7 python-pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
rm get-pip.py
sudo apt-get install dbus-x11 -y
sudo apt-get install gnome-themes-standard -y
# sudo apt-get install kali-linux-large -y
sudo apt-get install software-properties-common apt-transport-https curl -y
sudo apt-get install linux headers-$(uname -r) -y
sudo apt-get install hcxdumptool -y
sudo apt-get install hcxtools -y
sudo apt-get install dnsutils -y
sudo apt-get install exiftool -y
sudo apt-get install openvpn -y
sudo apt-get install dialog -y
sudo apt-get install protonvpn-cli -y


echo -e "~#~ Some structure changes, deleting and creating folders, & virtual python envs"
rm -r Music/
rm -r Templates/
rm -r Videos/
rm -r Public/
mkdir ~/Documents/vhl
mkdir ~/Documents/htb
mkdir ~/Documents/general
mkdir ~/virtualenv
sudo mkdir /opt/mytools

cd ~/virtualenv
pip3 install virtualenv
virtualenv -p python3 python3
virtualenv -p python2 python2


echo -e "~#~ install a bunch of new tools"
sudo apt-get install joplin -y
sudo touch /etc/apt/sources.list.d/insync.list
sudo echo "deb http://apt.insync.io/debian buster non-free contrib" > /etc/apt/sources.list.d/insync.list
sudo apt-get update
sudo apt-get install insync -y
sudo apt-get install code -y
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo -e "~#~ install a bunch git clones to /opt/mytools"
echo -e "~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~"
echo -e '~#~ SecLists [now kali install]'
sudo apt-get install seclists -y 

echo -e '~#~ h8mail'
sudo git clone https://github.com/khast3x/h8mail $mytools/h8mail
echo -e '~#~ discover'
sudo git clone https://github.com/leebaird/discover $mytools/discover
echo -e '~#~ nmap automator'
sudo git clone https://github.com/21y4d/nmapAutomator.git $mytools/nmapAutomator
echo -e '~#~ subbrute'
sudo git clone https://github.com/TheRook/subbrute.git $mytools/subbrute
echo -e '~#~ theHarvester'
sudo git clone https://github.com/laramies/theHarvester.git $mytools/theHarvester
echo -e '~#~ windows exploit suggester'
sudo git clone https://github.com/AonCyberLabs/Windows-Exploit-Suggester.git $mytools/windows-exploit-suggester
echo -e '~#~ nmap vulners'
sudo git clone https://github.com/vulnersCom/nmap-vulners.git /usr/share/nmap/scripts/
echo -e '~#~ priv esc scripts'
sudo git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git $mytools/priv-esc-scripts
echo -e '~#~ sublist3r'
sudo git clone https://github.com/aboul3la/Sublist3r.git $mytools/sublist3r
echo -e '~#~ sherlock'
git clone https://github.com/sherlock-project/sherlock.git $mytools/sherlock
$ python3 -m pip install -r $mytools/sherlock/requirements.txt
echo -e '~#~ windows reverse shell'
git clone https://github.com/Dhayalanb/windows-php-reverse-shell.git $mytools/windows-reverse-shell
echo -e '~#~ one-liner'
git clone https://github.com/D4Vinci/One-Lin3r.git $mytools/one-liner
sudo apt install libncurses5-dev
sudo pip3 install .$mytools/one-liner/One-Lin3r --user



#echo -e "~#~ Alisas in .bashrc for activating python environments: py3act, py2act"
#cat << EOF >> ~/.bashrc
#alias py2act='source ~/virtualenv/python2/bin/activate'
#alias py3act='source ~/virtualenv/python3/bin/activate'
#source ~/virtualenv/python3/bin/activate
#EOF
#source ~/virtualenv/python3/bin/activate
#echo -e ''


sudo apt-get update
sudo apt-get upgrade all -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y



