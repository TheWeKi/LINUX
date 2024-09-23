#!/usr/bin/env bash

pacman --noconfirm -S xorg xorg-xinit fwupd cups usbutils

pacman --noconfirm -S noto-fonts noto-fonts-extra noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono-nerd vlc
pacman --noconfirm -S mesa vulkan-intel intel-media-driver libva-utils libva-intel-driver

sleep 1

systemctl enable cups.socket
systemctl enable avahi-daemon.socket

sleep 2

