# ~/home-manager/modules/wms/waybar/modules/modules_left.nix

{
  programs.waybar.settings = {
    mainBar.modules-left = [
      "hyprland/workspaces"
      "hyprland/language"
      "keyboard-state"
      "hyprland/submap"
    ];

    "hyprland/workspaces" = {
      disable-scroll = true;
    };

    "hyprland/language" = {
      format-en = "US";
      format-ru = "RU";
      min-length = 5;
      tooltip = false;
    };

    "keyboard-state" = {
      numlock = true;
      capslock = true;
      format = "{icon} ";
      format-icons = {
        locked = " ";
        unlocked = "";
      };
    };
  };
}