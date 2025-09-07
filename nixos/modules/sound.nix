# ~/nix/nixos/modules/saund.nix

{ config, pkgs, ... }:
{
  #=>Sound
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  security.rtkit.enable = true;

  services = {
    # pulsaudio.enable = true;

    #=>Pipewire
    pipewire = {
      enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      jack.enable = true;
      pulse.enable = true;
    };
  };
}