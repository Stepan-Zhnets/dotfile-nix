# ~/home-manager/modules/wms/waybar/waybar.nix

{
  import = [
    ./style.nix
    ./settings.nix
  ];

  programs.waybar = {
    enable = true;
  };
}