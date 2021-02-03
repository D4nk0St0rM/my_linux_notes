##### using raspberry pi as remote tool box

https://wiki.debian.org/RaspberryPi3

```
lsblk
sudo fdisk /dev/sda
Command (m for help): o
Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): 

Using default response p.
Partition number (1-4, default 1): 
First sector (2048-613355519, default 2048): 
Last sector, +sectors or +size{K,M,G,T,P} (2048-613355519, default 613355519): 

Created a new partition 1 of type 'Linux' and of size 292.5 GiB.

Command (m for help): 
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
LABEL=PIDRIVE1  /mnt/pidrive1               ext4    defaults,noatime  0       1
```




