#### create ubuntu virtual machine



#### set up GUI desktop access

```
sudo apt-get -y update 
sudo apt-get -y upgrade 
sudo apt-get -y install gnome-shell 
sudo apt-get -y install ubuntu-gnome-desktop 
sudo apt-get -y install autocutsel 
sudo apt-get -y install gnome-core 
sudo apt-get -y install gnome-panel 
sudo apt-get -y install gnome-themes-standard
sudo apt-get -y install tightvncserver
touch ~/.Xresources
tightvncserver
### enter password
### Would you like to enter a view-only password (y/n)? n
vncserver -kill :1
nano ~/.vnc/xstartup
#!/bin/sh
autocutsel -fork
xrdb $HOME/.Xresources
xsetroot -solid grey
export XKL_XMODMAP_DISABLE=1
export XDG_CURRENT_DESKTOP="GNOME-Flashback:Unity"
export XDG_MENU_PREFIX="gnome-flashback-"
unset DBUS_SESSION_BUS_ADDRESS
gnome-session --session=gnome-flashback-metacity --disable-acceleration-check --debug &amp;
###CTRL+C
vncserver -geometry 1440x900 
```

#### Set up GoogleCloudSDK
```
https://cloud.google.com/sdk/docs/install
```

#### Access via SSH
```
gcloud compute ssh user@host --project projectname --zone zone-area-c1 --ssh-flag "-L 5901:localhost:5901"
```

#### Install VNCViewer
```
https://www.realvnc.com/en/connect/download/viewer/
```

#### Connect with VNCViewer
```
localhost:5901
```


