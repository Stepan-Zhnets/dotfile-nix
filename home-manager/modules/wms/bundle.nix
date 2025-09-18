# ~/home-manager/modules/wms/bundle.nix

{
imports = [
  ./fabric/fabric.nix
  ./hyprland/hyprland.nix
  ./waybar/waybar.nix
  ];
}