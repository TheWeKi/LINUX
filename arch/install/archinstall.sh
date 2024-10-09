#!/usr/bin/env bash

########################
### PRE INSTALLATION ###
########################

loadkeys us

read -p "Are You On HiDPI Monitor | (y / n) :    " FONT_SIZE

if [ $FONT_SIZE == "y" ]; then
    setfont ter-132n
fi

timedatectl set-timezone Asia/Kolkata
timedatectl set-ntp true

#########################
### DISK PARTITIONING ###
#########################

# Create GPT Partition Table & Partitions
lsblk

read -p "DISK   |   nvme0n1 / sda / vda :   " DISK
read -p "SWAP SIZE  |   4 - 16 :   " SWAP_SIZE

{
    echo "label: gpt"

    echo "size=+1G, type=uefi, bootable"
    echo "size=+${SWAP_SIZE}G, type=swap"
    echo "type=linux"

} | sfdisk /dev/$DISK

sleep 1

# Format Partitions
EFI="/dev/${DISK}1"
SWAP="/dev/${DISK}2"
ROOT="/dev/${DISK}3"

mkfs.fat -F 32 $EFI
mkswap $SWAP
mkfs.btrfs -f $ROOT

# Mount ROOT and Create SUBVOLUMES
mount $ROOT /mnt
btrfs subvolume create /mnt/@
btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@cache
btrfs subvolume create /mnt/@log
btrfs subvolume create /mnt/@snapshots
umount /mnt

# Mounting Each SUBVOLUMES with ZSTD Compression
mount -o compress=zstd:1,noatime,subvol=@ $ROOT /mnt

mkdir /mnt/home
mount -o compress=zstd:1,noatime,subvol=@home $ROOT /mnt/home

mkdir -p /mnt/var/cache
mount -o compress=zstd:1,noatime,subvol=@cache $ROOT /mnt/var/cache

mkdir -p /mnt/var/log
mount -o compress=zstd:1,noatime,subvol=@log $ROOT /mnt/var/log

mkdir /mnt/.snapshots
mount -o compress=zstd:1,noatime,subvol=@snapshots $ROOT /mnt/.snapshots

# Mounting EFI
mkdir -p /mnt/boot/efi
mount $EFI /mnt/boot/efi

# SWAP ON
swapon $SWAP

####################
### INSTALLATION ###
####################

# Pacman Conf
sed -i 's/^#ParallelDownloads/ParallelDownloads/' /etc/pacman.conf
reflector -c India -p https -l 5 --sort rate --save /etc/pacman.d/mirrorlist
pacman -Syy

# BASE LINUX PACKAGES - amd-ucode if using amd processor
pacstrap -K /mnt base base-devel linux linux-firmware linux-headers pacman-contrib intel-ucode btrfs-progs e2fsprogs dosfstools exfatprogs sof-firmware linux-firmware-marvell networkmanager modemmanager usb_modeswitch nano vi bash-completion zsh zsh-completions man-db

# Generating FSTAB
genfstab -U /mnt >> /mnt/etc/fstab

#####################
### CONFIGURATION ###
#####################

mkdir /mnt/archinstall

# Post Installation Scripts
curl -o /mnt/archinstall/config.sh https://raw.githubusercontent.com/theweki/os/refs/heads/main/arch/install/config.sh
chmod +x /mnt/archinstall/config.sh

# Chroot and Execute Post Installation Scripts
arch-chroot /mnt ./archinstall/config.sh

# Cleanup & Unmount
rm -rf /mnt/archinstall
umount -R /mnt

echo "Installation Completed. You can reboot now."
