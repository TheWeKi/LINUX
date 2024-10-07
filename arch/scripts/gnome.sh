#!/usr/bin/env bash

pacman --noconfirm -S xorg xorg-xinit fwupd gnome gnome-tweaks gnome-themes-extra power-profiles-daemon gnome-remote-desktop switcheroo-control cups usbutils
pacman --noconfirm -S noto-fonts noto-fonts-extra noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono-nerd
pacman --noconfirm -S mesa vulkan-intel intel-media-driver libva-utils libva-intel-driver
pacman --noconfirm -S yaru-gnome-shell-theme yaru-gtk-theme yaru-icon-theme extension-manager

sleep 1

systemctl enable gdm.service
systemctl enable switcheroo-control.service

systemctl enable cups.socket
systemctl enable avahi-daemon.socket

sleep 2

pacman --noconfirm -S git github-cli neovim gdb jdk-openjdk nodejs npm python go rustup docker docker-compose
pacman --noconfirm -S visual-studio-code-bin postman-bin mongodb-compass vesktop spotify vlc google-chrome

sleep 1

systemctl enable docker.service
usermod -aG docker "$USER"

sleep 2
