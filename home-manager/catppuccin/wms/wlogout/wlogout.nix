# ~/home-manager/catppuccin/wms/wlogout.nix

{
  imports = [
    ./layout.nix
    ./style.nix
  ];
  programs.wlogout = {
    enable = true;
  };
}
