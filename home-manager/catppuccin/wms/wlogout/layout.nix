# ~/home-manager/catppuccin/wms/wlogout/layout.nix

{
  programs.wlogout.layout = [
    {
      label = "shutdown";
      action = "systemctl poweroff";
      text = "Shutdown";
      keybind = "s";
    }
    {
      label = "lock";
      action = "hyprlock";
      text = "Lock";
      keybind = "l";
    }
    {
      label = "logout";
      action = "exit";
      text = "Logout";
      keybind = "q";
    }
    {
      label = "reboot";
      action = "reboot";
      text = "Reboot";
      keybind = "r";
    }
    # {
    #   label = "hibernate";
    #   action = "";
    #   text = "Hibernate";
    #   keybind = "h";
    # }
    # {
    #   laben = "suspend";
    #   action = "";
    #   text = "Suspend";
    #   keybind = "z";
    # }
  ];
}
