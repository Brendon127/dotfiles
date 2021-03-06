#/bin/bash

DRIVE="/mnt/arch-usb/backup"
DATE=`date +%Y_%m_%d_%H-%M`
SOURCE="/"
DEST="${DRIVE}/${DATE}"
mkdir $DEST
echo $DEST

sudo rsync --progress -aAX --delete --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/*  \
	--exclude=/run/* --exclude=/mnt/* --exclude=$HOME/android --exclude=$HOME/.android --exclude=/media/* --exclude="swapfile" --exclude="node_modules" --exclude="lost+found" --exclude=".cache" \
	--exclude="Downloads" --exclude="downloads" --exclude=".VirtualBoxVMs" --exclude=".ecryptfs" $SOURCE $DEST
