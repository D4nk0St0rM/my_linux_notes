#!/bin/bash

## D4nk0St0rM
#### #### #### #### spread l0v3, share kn0wl3dge #### #### #### ####


## Created after some inspiration from 
## https://github.com/blacklanternsecurity/kali-setup-script/blob/master/kali-setup-script.sh
# update https://github.com/D4nk0St0rM/simple_linux_tweaks/blob/main/sources.list
# create user to not require password for sudo [sudo visudo / theUSER ALL=(ALL) NOPASSWD:ALL)


RED='\033[0;31m'
NC='\033[0m' # No Colour
reset_colour='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32  m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'


#### Run As Root
#if [ "$HOME" != "/root" ]
#then
#    printf "This is to run as root... later gater\n"
#    exit 1
#fi

curuse=$(whoami)

#### Check KDE Version
if [ "`which kwriteconfig5`" ]; then
    KWRITECONF=kwriteconfig5
    HOTKEYS="$HOME/.config/khotkeysrc"
    PLASMADESK="$HOME/.config/plasma-org.kde.plasma.desktop-appletsrc"
    KDEVER=5
else
    KWRITECONF=kwriteconfig
    HOTKEYS="$HOME/.kde/share/config/khotkeysrc"
    PLASMADESK="$HOME/.kde/share/config/plasma-desktop-appletsrc"
    KDEVER=4
fi

#### skip prompts in apt-upgrade, etc.
export DEBIAN_FRONTEND=noninteractive
alias apt-get='yes "" | apt-get -o Dpkg::Options::="--force-confdef" -y'
apt-get update

#### Tweaking the themeing and look

echo -e ${CGREEN}"~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~" ${NC}
echo -e ${CYAN}"~#~ ~#~ ~#~ Tweaking the Theme ~#~ ~#~ ~#~"${NC}
echo -e ${GREEN}"~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~"${NC}
mkdir -p '/usr/share/wallpapers/wallpapers/' &>/dev/null
wallpaper_file="$(find . -type f -name Kali_dark_shadow_eye.jpg)"


if [[ -z "$wallpaper_file" ]]
    then
        wget -P '/usr/share/wallpapers/wallpapers/' https://raw.githubusercontent.com/D4nk0St0rM/simple_linux_tweaks/main/wallpaper/Kali_dark_shadow_eye.jpg
    else
        cp "$wallpaper_file" '/usr/share/wallpapers/wallpapers/Kali_dark_shadow_eye.jpg'
fi

#### .config/kdeglobals
${KWRITECONF} --file kdeglobals --group "KDE-Global GUI Settings" --key "GraphicEffectsLevel" 0
${KWRITECONF} --file kdeglobals --group "General" --key "ColorScheme" "BreezeDark"
${KWRITECONF} --file kdeglobals --group "General" --key "Name" "Kali-Dark"
${KWRITECONF} --file kdeglobals --group "General" --key "shadeSortColumn" "true"
${KWRITECONF} --file kdeglobals --group "Icons" --key "Theme" "Flat-Remix-Blue-Dark"
${KWRITECONF} --file kdeglobals --group "KDE" --key "ColorScheme" "KaliDark"
${KWRITECONF} --file kdeglobals --group "KDE" --key "SingleClick" "false"
${KWRITECONF} --file kdeglobals --group "KDE" --key "widgetStyle" "Oxygen"
${KWRITECONF} --file plasmarc --group "Wallpapers" --key "usersWallpapers" "/home/$curuse/Pictures/Kali_dark_shadow_eye.jpg"
${KWRITECONF} --file plasmarc --group "Theme" --key "name" "breeze-dark"


#### Language setting
echo -e ${RED}"~#~ GB Keyboard"${NC}
sudo setxkbmap -layout gb

#### Set default text editor
echo "export EDITOR=/usr/bin/nano" >> ~/.zshrc
echo "export VISUAL=/usr/bin/nano" >> ~/.zshrc

#### A litte folder management
rmdir ~/Music ~/Public ~/Videos ~/Templates ~/Desktop &>/dev/null
echo -e ${RED}"~#~ Some structure changes, deleting and creating folders, & virtual python envs"${NC}
mkdir -p ~/Documents/vhl 2>/dev/null
mkdir -p ~/Documents/htb 2>/dev/null
mkdir -p ~/Documents/general 2>/dev/null
mkdir -p ~/.virtualenv 2>/dev/null
mkdir -p /opt/mytools 2>/dev/null
mytools="/opt/mytools"
virtenv="~/.virtualenv"
mkdir -p ~/Downloads 2>/dev/null

#### install python pip as oddly missing
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
rm get-pip.py


printf '\n============================================================\n'
printf '[+] Updating System\n'
printf '============================================================\n\n'
apt-get update
apt-get upgrade


#### Lets install some additional progs and apps
printf '\n============================================================\n'
printf '[+] Installing:\n'
printf '     - git\n'
printf '     - dbus-x11\n'
printf '     - linux-headers\n'
printf '     - hcxdumptool\n'
printf '     - hcxtools\n'
printf '     - dnsutils\n'
printf '     - exiftool\n'
printf '     - openvpn\n'
printf '     - dialog\n'
printf '     - protonvpn\n'
printf '============================================================\n\n'

sudo apt-get install \
    git \
    dbus-x11 \
    linux headers-$(uname -r) \
    hcxdumptool \
    hcxtools \
    dnsutils \
    exiftool \
    openvpn \
    dialog \
    protonvpn-cli \
printf '\n============================================================\n'
printf '[+] Updating System\n'
printf '============================================================\n\n'
apt-get update

printf '\n============================================================\n'
printf '[+] Installing:\n'
printf '     - wireless drivers\n'
printf '     - golang & environment\n'
printf '     - docker\n'
printf '     - powershell\n'
printf '     - terminator\n'
printf '     - pip & pipenv\n'
printf '     - patator\n'
printf '     - zmap\n'
printf '     - htop\n'
printf '     - mosh\n'
printf '     - tmux\n'
printf '     - NFS server\n'
printf '     - DNS Server\n'
printf '     - hcxtools (hashcat)\n'
printf '============================================================\n\n'
sudo apt-get install \
    realtek-rtl88xxau-dkms \
    golang \
    docker.io \
    powershell \
    terminator \
    python3-dev \
    python3-pip \
    patator \
    net-tools \
    zmap \
    htop \
    mosh \
    tmux \
    nfs-kernel-server \
    dnsmasq \
    hcxtools \

python2 -m pip install pipenv
python3 -m pip install pipenv


# default tmux config
cat <<EOF > /root/.tmux.conf
set -g mouse on
set -g history-limit 20000
EOF


mkdir -p ~/.go
gopath_exp='export GOPATH="$HOME/.go"'
path_exp='export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"'
sed -i '/export GOPATH=.*/c\' ~/.profile
sed -i '/export PATH=.*GOPATH.*/c\' ~/.profile
echo $gopath_exp | tee -a "$HOME/.profile"
grep -q -F "$path_exp" "$HOME/.profile" || echo $path_exp | tee -a "$HOME/.profile"
. "$HOME/.profile"

printf '\n============================================================\n'
printf '[+] Installing Bettercap\n'
printf '============================================================\n\n'
apt-get install libnetfilter-queue-dev libpcap-dev libusb-1.0-0-dev
go get -v github.com/bettercap/bettercap


echo -e ${RED}"~#~ install a bunch git clones to /opt/mytools"${NC}
echo -e ${YELLOW}"~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~"${NC}
echo -e ${CYAN}"~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~"${NC}

echo -e ${RED}"~#~ SecLists [now kali install]"${NC}
sudo apt-get install seclists -y

echo -e ${RED}"~#~ h8mail"${NC}
sudo git clone https://github.com/khast3x/h8mail $mytools/h8mail

echo -e ${RED}"~#~ discover"${NC}
sudo git clone https://github.com/leebaird/discover $mytools/discover

echo -e ${RED}"~#~ nmap automator"${NC}
sudo git clone https://github.com/21y4d/nmapAutomator.git $mytools/nmapAutomator

echo -e ${RED}"~#~ subbrute"${NC}
sudo git clone https://github.com/TheRook/subbrute.git $mytools/subbrute

echo -e $fg[yellow]"~#~ theHarvester"${NC}
sudo git clone https://github.com/laramies/theHarvester.git $mytools/theHarvester

echo -e ${RED}"~#~ windows exploit suggester"${NC}
sudo git clone https://github.com/AonCyberLabs/Windows-Exploit-Suggester.git $mytools/windows-exploit-suggester

echo -e ${RED}"~#~ nmap vulners"${NC}
sudo git clone https://github.com/vulnersCom/nmap-vulners.git /usr/share/nmap/scripts/vulners

echo -e ${RED}"~#~ priv esc scripts"${NC}
sudo git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git $mytools/priv-esc-scripts

echo -e ${RED}"'~#~ sublist3r"${NC}
sudo git clone https://github.com/aboul3la/Sublist3r.git $mytools/sublist3r

echo -e ${RED}"~#~ sherlock"${NC}
sudo git clone https://github.com/sherlock-project/sherlock.git $mytools/sherlock
$ python3 -m pip install -r $mytools/sherlock/requirements.txt

echo -e ${RED}"~#~ windows reverse shell"${NC}
sudo git clone https://github.com/Dhayalanb/windows-php-reverse-shell.git $mytools/windows-reverse-shell

echo -e ${RED}"~#~ gobuster"${NC}
sudo git clone https://github.com/OJ/gobuster.git $mytools/gobuster

echo -e ${RED}"~#~ ffuf"${NC}
sudo git clone https://github.com/ffuf/ffuf.git $mytools/ffuf

echo -e ${YELLOW}"~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~"${NC}
echo -e ${CYAN}"~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~"${NC}
echo -e ${RED}"~#~ We are done, the cats are wearing their hats"${NC}
echo -e ${YELLOW}"~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~ ~#~"${NC}
echo -e ${CYAN}"~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~#~"${NC}

printf '\n============================================================\n'
printf '[+] Updating System\n'
printf '============================================================\n\n'
apt-get update
apt-get upgrade
updatedb
printf '\n============================================================\n'
printf '[+] Reboot, grab a coffee, and consider install paid licence items\n'
printf '============================================================\n\n'



