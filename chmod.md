

### Change permission on all files:

```
sudo find /opt/mytools/ -type f -exec chmod 644 {} \;
```

### Change permission on all folders:

```
find /opt/mytools/ -type d -exec chmod 755 {} \;
```
