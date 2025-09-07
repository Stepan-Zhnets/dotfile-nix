# ~/nix/nixos/modules/drivers.nix

{ config, lib, pkgs, ... }:
{
  #=>Video Drivers
  services.xserver.videoDrivers = [ "nvidia" ];

  #=>Drivers
  hardware = {
    #=>OpenGL
    graphics = {
      enable = true;
      enable32Bit = true;
    };

    #=>NVIDIA
    nvidia = {
      #=>Open Source
      open = true;
      modesetting.enable = true;

      #=>Power Management
      powerManagement = {
        enable = true;
        finegrained = true;
      };

      #=>Prime
      prime = {
        sync.enable = true;

        #=>Inregrated
        intelBusId = "PCI:0:2:0";

        #=>Dedicated
        nvidiaBusId = "PCI:1:0:0";
      };
      
      #=>Settings
      nvidiaSettings = true;

      #=>Package
      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };
  };
}