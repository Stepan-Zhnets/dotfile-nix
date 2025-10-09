# ~/home-manager/modules/wms/waybar/settings.nix

{
  programs.waybar.settings = {
    mainBar = {
      layer = "top";
      position = "bottom";
      margin = "1 250 1 250";
    };
  };
}
