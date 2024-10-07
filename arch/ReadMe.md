# Setup


## Pre Install

    setfont ter-132b # HiDPI Display

    iwctl --passphrase [password] station wlan0 connect [network]

    cfdisk /dev/DISK 
        GPT
        
        EFI   1GB
        SWAP  16GB
        ROOT  REMAINING

## Install

    bash <(curl -s https://raw.githubusercontent.com/theweki/os/refs/heads/main/arch/scripts/archinstall.sh)

## Gnome

    curl -o gnome.sh https://raw.githubusercontent.com/theweki/os/refs/heads/main/arch/scripts/gnome.sh

    chmod +x gnome.sh

    sudo ./gnome.sh

## Post Install

    gh auth login
    Gnome Extensions - kstatusappindicatornotifier userthemes dashtodock blurmyshell clipboardindicator

    Idea Ultimate using Official Tarball
