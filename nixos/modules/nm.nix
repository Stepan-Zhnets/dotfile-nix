# ~/nix/nixos/modules/nm.nix

{ config, pkgs, ... }:
{
  # NetworkManager
	networking.networkmanager.enable = true;

  # # Firewall
  # networking.firewall = {
  #   allowedTCPPorts = [ 80 443 ];
  #   allowedUDPPorts = [ 80 443 ];
  # };

  # # DNS
  # networking.nameservers = [ "1.1.1.1" "1.0.0.1" ];

  # # DHCP
  # networking.dhcpcd.enable = true;


}