#!/usr/bin/env bash

lsblk

read -p "DISK   |   nvme0n1 / sda / vda :   " DISK
read -p "SWAP SIZE  |   [2 - 16]" SWAP

{
    echo "label: gpt"       # GPT Partition Table
    echo ",+1G,U,*"         # EFI Partition    | U - uefi   | * - bootable
    echo ",+${SWAP}G,S,"    # SWAP Partition   | S - swap 
    echo ",,,"              # ROOT Partition   | L - linux (default)
} | sfdisk /dev/$DISK

sleep 1
