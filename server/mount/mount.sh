#!/bin/sh

# Beispiel: //10.0.0.100/share → /mnt/share
mkdir -p /mnt/share

mount -t cifs //fileserver1.rz.hs-fulda.de/DATA6 /mnt/share \
  -o username=$CIFS_USER,password=$CIFS_PASS,vers=3.0,iocharset=utf8,uid=1000,gid=1000,nodfs

# Container bleibt laufen, damit Volume erreichbar
tail -f /dev/null