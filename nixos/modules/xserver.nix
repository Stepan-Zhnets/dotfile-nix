# ~/nix/nixos/modules/xserver.nix

{ config, pkgs, ... }:
{
  #=>XServer
  services = {
      #=>Enable the KDE Plasma Desktop Environment.
      displayManager.sddm.enable = true;
      desktopManager.plasma6.enable = true;

	#=>Enable thee Gnome Desktop Environment.
	# desktopManager.gnome.enable = true;

    xserver = {
      enable = true;
      # #=>Enable the KDE Plasma Desktop Environment. (XServer)
      # displayManager.sddm.enable = true;
      # desktopManager.plasma6.enable = true;
    };
  };
}
