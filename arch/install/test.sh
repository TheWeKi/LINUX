#!/usr/bin/env bash

lsblk

read -p "DISK   |   nvme0n1 / sda / vda :   " DISK
read -p "SWAP SIZE  |   [2 - 16]:   " SWAP

{
    echo "label: gpt"

    echo "size=+1G, type=uefi, bootable"
    echo "size=+${SWAP}G, type=swap"
    echo "type=linux"

} | sfdisk /dev/$DISK

sleep 1
