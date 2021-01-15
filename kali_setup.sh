#!/bin/bash

    #### D4nk0St0rM
    #### spread love, share knowledge

# update https://github.com/D4nk0St0rM/simple_linux_tweaks/blob/main/sources.list
# create user to not require password for sudo [sudo visudo / theUSER ALL=(ALL) NOPASSWD:ALL)
# wallpaper: https://raw.githubusercontent.com/D4nk0St0rM/simple_linux_tweaks/main/wallpaper/Kali_dark_shadow_eye.jpg

echo -e $fg[yellow]"## Hold on to your hats.... cats"$reset_color

#set -x
mytools="/opt/mytools"

echo -e $fg[yellow]""update & upgrade"$reset_color

sudo apt-get update && apt-get upgrade
sudo apt-get dist-upgrade -y

echo -e $fg[yellow]""~#~ GB Keyboard"$reset_color
sudo setxkbmap -layout gb

echo -e $fg[yellow]"~#~ Terminal config for looks"$reset_color
### see here for further config changes: https://github.com/D4nk0St0rM/simple_linux_tweaks/blob/main/konsole_zsh_terminal.md
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting


echo -e $fg[yellow]"~#~ update and install some fundamental tools for running environment"$reset_color
sudo apt-get install -y git
# sudo apt-get install -y python3.7 python3-pip python2.7 python-pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python get-pip.py
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
sudo apt-get install edb-debugger -y

echo -e $fg[yellow]"~#~ Some structure changes, deleting and creating folders, & virtual python envs"$reset_color
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
sudo apt-get install python3-pip -y
pip3 install virtualenv
##  WARNING: The script virtualenv is installed in '/home/USER/.local/bin' which is not on PATH.

virtualenv -p python3 python3
virtualenv -p python2 python2


echo -e $fg[yellow]"~#~ install a bunch of new tools"$reset_color
sudo apt-get install joplin -y
sudo touch /etc/apt/sources.list.d/insync.list
### MANUPDATE : sudo echo "deb http://apt.insync.io/debian buster non-free contrib" > /etc/apt/sources.list.d/insync.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A684470CACCAF35C
sudo apt-get update
sudo apt-get install insync -y


echo -e $fg[yellow]"~#~ install a bunch git clones to /opt/mytools"$reset_color
echo -e $fg[red]"~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~"$reset_color
echo -e $fg[yellow]"~#~ SecLists [now kali install]"$reset_color
sudo apt-get install seclists -y 

echo -e $fg[yellow]"~#~ h8mail"$reset_color
sudo git clone https://github.com/khast3x/h8mail $mytools/h8mail

echo -e $fg[yellow]"~#~ discover"$reset_color
sudo git clone https://github.com/leebaird/discover $mytools/discover

echo -e $fg[yellow]"~#~ nmap automator"$reset_color
sudo git clone https://github.com/21y4d/nmapAutomator.git $mytools/nmapAutomator

echo -e $fg[yellow]"~#~ subbrute"$reset_color
sudo git clone https://github.com/TheRook/subbrute.git $mytools/subbrute

echo -e $fg[yellow]"~#~ theHarvester"$reset_color
sudo git clone https://github.com/laramies/theHarvester.git $mytools/theHarvester

echo -e $fg[yellow]"~#~ windows exploit suggester"$reset_color
sudo git clone https://github.com/AonCyberLabs/Windows-Exploit-Suggester.git $mytools/windows-exploit-suggester

echo -e $fg[yellow]"~#~ nmap vulners"$reset_color
sudo git clone https://github.com/vulnersCom/nmap-vulners.git /usr/share/nmap/scripts/

echo -e $fg[yellow]"~#~ priv esc scripts"$reset_color
sudo git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git $mytools/priv-esc-scripts

echo -e $fg[yellow]"'~#~ sublist3r"$reset_color
sudo git clone https://github.com/aboul3la/Sublist3r.git $mytools/sublist3r

echo -e $fg[yellow]"~#~ sherlock"$reset_color
sudo git clone https://github.com/sherlock-project/sherlock.git $mytools/sherlock

$ python3 -m pip install -r $mytools/sherlock/requirements.txt
echo -e $fg[yellow]"~#~ windows reverse shell"$reset_color

sudo git clone https://github.com/Dhayalanb/windows-php-reverse-shell.git $mytools/windows-reverse-shell
echo -e $fg[yellow]"~#~ gobuster"$reset_color

sudo git clone https://github.com/OJ/gobuster.git $mytools/gobuster
echo -e $fg[yellow]"~#~ ffuf"$reset_color

sudo git clone https://github.com/ffuf/ffuf.git $mytools/ffuf
echo -e $fg[yellow]"~#~ one-liner"$reset_color

sudo git clone https://github.com/D4Vinci/One-Lin3r.git $mytools/one-liner
sudo apt install libncurses5-dev
cd /opt/mytools/one-liner/one_lin3r
sudo git pull
cd ../
sudo python3 setup.py install
cd ~/


### other  
# https://github.com/Rainsec/Tools.git
# https://github.com/epi052/feroxbuster.git
# https://github.com/pry0cc/axiom.git
# https://github.com/CoreyD97/BurpCustomizer
# https://github.com/CoreyD97/BurpTabEssentials
# https://github.com/CoreyD97/Stepper.git
# https://github.com/nccgroup/autochrome.git
# https://github.com/nccgroup/ScoutSuite.git
# https://github.com/cwinfosec/revshellgen



echo -e "~#~ Alisas in .bashrc for activating python environments: py3act, py2act"
cat << EOF >> ~/.zshrc
alias py2act='source ~/virtualenv/python2/bin/activate'
alias py3act='source ~/virtualenv/python3/bin/activate'
source ~/virtualenv/python3/bin/activate
EOF
source ~/virtualenv/python3/bin/activate
echo -e ''
deactivate

sudo apt-get update
sudo apt-get upgrade all -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y



