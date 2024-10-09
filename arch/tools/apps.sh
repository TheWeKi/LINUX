#!/usr/bin/env bash

username="weki"

# Development Tools
# GDB installs python as a dependency
pacman --noconfirm -S git github-cli neovim docker docker-compose gdb jdk-openjdk nodejs npm go rustup
pacman --noconfirm -S visual-studio-code-bin postman-bin mongodb-compass

# Other Apps
pacman --noconfirm -S vesktop spotify vlc google-chrome

sleep 2

# Docker Setup
systemctl enable docker.service
groupadd docker
usermod -aG docker $username

sleep 2
