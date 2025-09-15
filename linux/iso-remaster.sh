#!/usr/bin/env bash

ISO_FILE=$1
PRESEED_FILE=$2

mkdir /mnt/ubuntu-iso

# mount as loop device, required for isos and floppy disks
mount -o loop $ISO_FILE /mnt/ubuntu-iso

mkdir /tmp/ubuntu-iso

# Attempt to use 7z to retain the system bootable files but still fails
7z x -o/tmp/ubuntu-iso $ISO_FILE

cp -r /mnt/ubuntu-iso/* /tmp/ubuntu-iso

cp $PRESEED_FILE /tmp/ubuntu-iso/

genisoimage -o ubuntu-alex.iso -R -J /tmp/ubuntu-iso/

# fails to boot in virtualbox
# sudo apt install syslinux-utils
# sudo isohybrid ubuntu-alex.iso
# isohybrid: ubuntu-alex.iso: could not find boot record

# also failed but I think this explicitly deleted the boot info based on the output of the command
# investigate further
# xorriso -indev Downloads/ubuntu-24.04.3-desktop-amd64.iso -outdev ubuntu-alex.iso -add ~/autoinstall-user-data
umount /mnt/ubuntu-iso/

rmdir /mnt/ubuntu-iso/ /tmp/ubuntu-iso
