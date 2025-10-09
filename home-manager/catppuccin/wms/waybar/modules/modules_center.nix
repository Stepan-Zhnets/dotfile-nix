# ~/home-manager/modules/wms/waybar/modules/modules_center.nix

{
  programs.waybar.settings = {
    mainBar.modules-center = [
      "clock"
    ];

    "clock" = {
      tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
      format = "{:%a; %d %b, %I:%M %p}";
    };
  };
}