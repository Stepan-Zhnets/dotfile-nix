# ~/home-manager/modules/theme.nix
# Centralized color theme module for all home-manager programs

{ config, lib, ... }:

let
  # Import color themes
  colorThemes = import ./wms/waybar/color_theme.nix;
  
  # Default theme selection - can be overridden via config
  defaultTheme = "gruvbox_dark";
  selectedTheme = config.theme.name or defaultTheme;
  colors = colorThemes.${selectedTheme};
  
  # Helper function to get theme colors
  getTheme = themeName: colorThemes.${themeName};
  
  # Common color mappings for different programs
  gruvboxMappings = {
    # Background colors
    bg = colors.bg_0;
    bg_alt = colors.bg_1;
    bg_highlight = colors.bg_2;
    bg_highlight_alt = colors.bg_3;
    
    # Foreground colors  
    fg = colors.fg_1;
    fg_alt = colors.fg_2;
    fg_muted = colors.fg_3;
    fg_dim = colors.fg_4;
    
    # Accent colors
    red = colors.red_b;
    green = colors.green_b;
    yellow = colors.yellow_b;
    blue = colors.blue_b;
    purple = colors.purple_b;
    aqua = colors.aqua_b;
    orange = colors.orange_b;
    gray = colors.gray_b;
    
    # Neutral colors
    red_n = colors.red_n;
    green_n = colors.green_n;
    yellow_n = colors.yellow_n;
    blue_n = colors.blue_n;
    purple_n = colors.purple_n;
    aqua_n = colors.aqua_n;
    orange_n = colors.orange_n;
    gray_n = colors.gray_n;
  };
  
  catppuccinMappings = {
    # Background colors
    bg = colors.base;
    bg_alt = colors.surface0;
    bg_highlight = colors.surface1;
    bg_highlight_alt = colors.surface2;
    
    # Foreground colors
    fg = colors.text;
    fg_alt = colors.subtext1;
    fg_muted = colors.subtext0;
    fg_dim = colors.overlay2;
    
    # Accent colors
    red = colors.red;
    green = colors.green;
    yellow = colors.yellow;
    blue = colors.blue;
    purple = colors.mauve;
    aqua = colors.teal;
    orange = colors.peach;
    gray = colors.overlay0;
    
    # Neutral colors (using same as accent for catppuccin)
    red_n = colors.red;
    green_n = colors.green;
    yellow_n = colors.yellow;
    blue_n = colors.blue;
    purple_n = colors.mauve;
    aqua_n = colors.teal;
    orange_n = colors.peach;
    gray_n = colors.overlay0;
  };
  
  # Get color mappings based on selected theme
  colorMappings = if selectedTheme == "catppuccin_mocha" then catppuccinMappings else gruvboxMappings;
  
in {
  # Theme configuration options
  options.theme = {
    name = lib.mkOption {
      type = lib.types.enum [ "gruvbox_dark" "gruvbox_light" "catppuccin_mocha" ];
      default = defaultTheme;
      description = "Color theme to use across all programs";
    };
  };
  
  # Export theme data
  config.theme = {
    # Raw color themes
    themes = colorThemes;
    
    # Current theme colors
    colors = colors;
    
    # Mapped colors for easy use
    mapped = colorMappings;
    
    # Helper functions
    getTheme = getTheme;
    
    # Theme name
    name = selectedTheme;
  };
}
