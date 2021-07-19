### Creating bootable USB via commandline


##### find USB drive reference
```
sudo fdisk –l 
```

##### unmount the USB drive for formating
```
umount /dev/sdb* 
```

##### format the USB
```
mkfs.vfat /dev/sdb –I 
```

##### create the bootable USB

```
dd if=~/pathway/to_the/iso/forbootingup.iso of=/dev/sdb 
```


