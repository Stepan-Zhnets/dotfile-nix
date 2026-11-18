{ lib, config, ... }:
{
  services.zapret2 = {
    enable = true;
    presets = [ "youtube" "discord" ];
    defaultPreset = "youtube";
  };
}