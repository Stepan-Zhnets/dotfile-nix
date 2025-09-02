# ~/nix/nixos/modules/virtual-box.nix

{
  # packages = with pkgs; [ virtualbox ];
  virtualisation.virtualbox = {
    host = {
      enable = true;
      # enableKvm = true;
    };
    guest = {
      enable = true;
      dragAndDrop = true;
    };
  };
  boot.kernelModules = [
    "vboxdrv"
    "vboxnetadp"
    "vboxnetflt"
    "vboxpci"
  ];
  # users.users.zhnets.extraGroups = [ "vboxusers" ];
  users.extraGroups.vboxusers.members = [ "zhnets" ];
}
