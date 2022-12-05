#!/bin/bash
export VOLUME_NAME=$1

sudo mkdir /mnt/data
sudo mount -o defaults,nofail,discard,noatime /dev/disk/by-id/scsi-0DO_Volume_$VOLUME_NAME /mnt/data