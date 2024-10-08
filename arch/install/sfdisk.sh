#!/usr/bin/env bash

lsblk

read -p "DISK   |   nvme0n1 / sda / vda :   " DISK

{
    echo "label: gpt"
    echo ",+1G,EF00,*"  # EFI Partition
    echo ",+16G,8200,"  # SWAP Partition
    echo ",,"           # ROOT Partition
} | sfdisk /dev/$DISK

sleep 1
