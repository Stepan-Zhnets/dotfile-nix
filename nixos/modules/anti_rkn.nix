# ~/nix/nixos/modules/anti_rkn.nix

{ config, pkgs, ... }:
{
  # Zapret
  services.zapret.enable = true;
  services.zapret.config = ''
    # Zapret config
  '';

  # GoodByeDPI
  services.goodbyedpi.enable = true;
  services.goodbyedpi.config = ''
    # GoodByeDPI config
  '';
}