#!/usr/bin/env bash

lsblk

read -p "DISK   |   nvme0n1 / sda / vda :   " DISK
read -p "SWAP SIZE  |   [2 - 16]" SWAP

{
    echo "label: gpt"       # GPT Partition Table

    echo "start=, size=+1G, type=uefi, bootable, name="
    echo "start=, size=+${SWAP}G, type=swap, name="
    echo "start=, size=, type=linux, name="

} | sfdisk /dev/$DISK

sleep 1
