# ~/home-manager/catppuccin/wms/wlogout/style.nix

{ config, ... }:
let
  colorTheme = import ./../../color_theme.nix;
  colors = colorTheme.catppuccin_mocha;

  #|==============================|

  border_radius = "25px";

  window_bgc         = "rgba(202, 51, 51, 0)";
  window_fgc         = "rgba(202, 51, 51, 0)";
  # window_bgc   = colors.surface1;
  # window_fgc   = colors.mauve;

  shutdown_bgc = colors.surface1;
  shutdown_fgc = colors.mauve;

  lock_bgc = colors.surface1;
  lock_fgc = colors.sky;

in{
  programs.wlogout.style = ''
    * {
      background-image: none;
      box-shadow: none;
    }
    #window {
      background: ${window_bgc};
      color: ${window_fgc};
      border-radius: ${border_radius}
      border: 2 solid ${window_fgc}
      padding: 20px;
    }

    button {
      padding: 10px 20px;
      margin: 5px;
      font-size:16;
    }

    button#shutdown {
      background: ${shutdown_bgc};
      color: ${shutdown_fgc};
      borrder-radius: ${border_radius};
      border: 2 solid ${shutdown_fgc};
    }
    button#lock {
      background: ${lock_bgc};
      color: ${lock_fgc};
      border-radius: ${border_radius};
      border: 2 solid ${lock_fgc};
    }
  '';
}
