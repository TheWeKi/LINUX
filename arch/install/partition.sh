#!/usr/bin/env bash

lsblk

read -p "DISK   |   nvme0n1 / sda / vda :   " DISK

# GPT Partition Table
parted /dev/$DISK --script mklabel gpt

# EFI Partition
parted /dev/$DISK --script mkpart fat32 1MiB 1GiB
parted /dev/$DISK --script set 1 esp on

# SWAP Partition
parted /dev/$DISK --script mkpart linux-swap 1GiB 16GiB

# ROOT Partition
parted /dev/$DISK --script mkpart btrfs 16GiB 100%

sleep 1
