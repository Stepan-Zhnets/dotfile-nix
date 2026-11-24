# ~/nixos/modules/niri.niri

{ config, pkgs, lib, ... }: {
  programs.niri = {
    enable = true;
  };
}
