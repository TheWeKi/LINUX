#!/usr/bin/env bash

lsblk

read -p "DISK   |   nvme0n1 / sda / vda :   " DISK

# Create GPT Partition Table with No Partitions
echo 'label: gpt' | sfdisk /dev/$DISK

# EFI Partition
echo ',+1G,EF00,*' | sfdisk /dev/$DISK

# SWAP Partition
echo ',+16G,8200,' | sfdisk /dev/$DISK

# ROOT Partition
echo ',,8300,' | sfdisk /dev/$DISK

sleep 1
