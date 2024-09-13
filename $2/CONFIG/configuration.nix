{ config, lib, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  environment.systemPackages = with pkgs; [];
  nixpkgs.config.allowUnfree = true;

  users.users.weki = {
    isNormalUser = true;
    description = "weki";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Kolkata";

  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Base NixOS Version DO NOT CHANGE
  system.stateVersion = "24.05"; 
}