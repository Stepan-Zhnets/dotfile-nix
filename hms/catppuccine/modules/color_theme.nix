# ~/home-manager/modules/wms/waybar/color.nix

{
  gruvbox_dark = { # {_GruvBox-Dark_}
    # {_BG_}
    # bg       = "#282828";
    bg_0     = "#282828";
    bg_0_h   = "#1d2021";
    bg_0_s   = "#32302f";
    bg_1     = "#3c3836";
    bg_2     = "#504945";
    bg_3     = "#665c54";
    bg_4     = "#7c6f64";

    # {_FG_}
    # fg       = "#ebdbb2";
    fg_0     = "#fbf1c7";
    fg_1     = "#ebdbb2";
    fg_2     = "#d5c4a1";
    fg_3     = "#bdae93"; 
    fg_4     = "#a89984";

    # {_COLOR_NETURAL_}
    red_n    = "#cc241d";
    green_n  = "#98971a";
    yellow_n = "#d79921";
    blue_n   = "#458588";
    purple_n = "#b16286";
    aqua_n   = "#689d6a";
    gray_n   = "#928374";
    orange_n = "#d65d0e";

    # {_COLOR_BRIGHT_}
    red_b    = "#fb4934";
    green_b  = "#b8bb26";
    yellow_b = "#fabd2f";
    blue_b   = "#83a598";
    purple_b = "#d3869b";
    aqua_b   = "#8ec07c";
    gray_b   = "#a89984";
    orange_b = "#fe8019";
  };

  gruvbox_light = { # {_GruvBox-Light_}
    # {_BG_}
    # bg       = "#fbf1c7";
    bg_0     = "#fbf1c7";
    bg_0_h   = "#f9f5d7";
    bg_0_s   = "#f2e5bc";
    bg_1     = "#ebdbb2";
    bg_2     = "#d5c4a1";
    bg_3     = "#bdae93";
    bg_4     = "#a89984";

    # {_FG_}
    # fg       = "#ebdbb2";
    fg_0     = "#282828";
    fg_1     = "#3c3836";
    fg_2     = "#504945";
    fg_3     = "#665c54"; 
    fg_4     = "#7c6f64";

    # {_COLOR_NETURAL_}
    red_n    = "#cc241d";
    green_n  = "#98971a";
    yellow_n = "#d79921";
    blue_n   = "#458588";
    purple_n = "#b16286";
    aqua_n   = "#689d6a";
    gray_n   = "#928374";
    orange_n = "#d65d0e";

    # {_COLOR_FADED_}
    red_f    = "#9d0006";
    green_f  = "#79740e";
    yellow_f = "#b57614";
    blue_f   = "#076678";
    purple_f = "#8f3f71";
    aqua_f   = "#427b58";
    gray_f   = "#7c6f64";
    orange_f = "#af3a03";
  };

  catppuccin_mocha = { #{_CATPPUCCIN_MOCHA_}
    rosewater = "#f5e0dc";
    flamingo  = "#f2cdcd";
    pink      = "#f5c2e7";
    mauve     = "#cba6f7";
    red       = "#f38ba8";
    maroon    = "#eba0ac";
    peach     = "#fab387";
    yellow    = "#f9e2af";
    green     = "#a6e3a1";
    teal      = "#94e2d5";
    sky       = "#89dceb";
    sapphire  = "#74c7ec";
    blue      = "#89b4fa";
    lavender  = "#b4befe";
    text      = "#cdd6f4";
    subtext1  = "#bac2de";
    subtext0  = "#a6adc8";
    overlay2  = "#9399b2";
    overlay1  = "#7f849c";
    overlay0  = "#6c7086";
    surface2  = "#585b70";
    surface1  = "#45475a";
    surface0  = "#313244";
    base      = "#1e1e2e";
    mantle    = "#181825";
    crust     = "#181825";
  };
}