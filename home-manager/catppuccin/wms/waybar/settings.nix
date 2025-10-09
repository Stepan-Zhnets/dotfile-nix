# ~/home-manager/modules/wms/waybar/settings.nix

{
  programs.waybar.settings = {
    mainBar = {
      layer = "bottom";
      position = "bottom"; # bottom, top
      margin = "0 25 0 25";
    };
  };
}
