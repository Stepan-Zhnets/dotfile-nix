# ~/nix/nixos/modules/saund.nix

{ config, pkgs, ... }:
{
  #=>Sound
  # sound.enable = true;
  # hardware.pulseaudio.enable = false;

  hardware.alsa.enablePersistence = true;

  security.rtkit.enable = true;

  services = {
    #=>Pipewire
    pipewire = {
      enable = true;
      audio.enable = true;
      jack.enable = true;
      pulse.enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
    };
  };
}