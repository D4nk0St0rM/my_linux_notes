##### Using raspberry pi as remote tool box

- [Debian](https://wiki.debian.org/RaspberryPi3)
- [Kali](https://www.offensive-security.com/kali-linux-arm-images/)


##### Mount USB storage
```
lsblk
sudo fdisk /dev/sda
Command (m for help): o
Command (m for help): n
Select (default p): 
Using default response p.
Partition number (1-4, default 1): 
Command (m for help): w
sudo fdisk -l /dev/sda
sudo mkfs.ext4 -L PIDRIVE1 /dev/sda1
sudo mkdir /mnt/pidrive1
sudo mount -L PIDRIVE1 /mnt/pidrive1
ls /mnt/pidrive1/
nano /etc/fstab

proc            /proc           proc    defaults          0       0
/dev/mmcblk0p1  /boot           vfat    defaults          0       2
/dev/mmcblk0p2  /               ext4    defaults,noatime  0       1
LABEL=PIDRIVE1  /mnt/pidrive1   ext4    defaults,noatime  0       1
```

##### Setting up Kali on raspberry pi [update etc/apt/sources.list]

```
sudo apt-get install kali-linux-headless
sudo apt install kali-linux-default
```



