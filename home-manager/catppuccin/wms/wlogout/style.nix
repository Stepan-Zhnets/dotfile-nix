# ~/home-manager/catppuccin/wms/wlogout/style.nix

{ config, lib, pkgs, ... }:
let
  colorTheme = import ./../../color_theme.nix;
  colors = colorTheme.catppuccin_mocha;

  #|==============================|

  border_radius = "50px";

  window_bgc    = "rgba(24, 24, 37, 0.7)";
  window_fgc    = "rgba(24, 24, 37, 0.7)";
  # window_bgc    = colors.surface1;
  # window_fgc    = colors.mauve;

  button_bgc    = colors.surface1;
  button_fgc    = colors.text;
  button_a_bgc  = colors.lavender;
  button_a_fgc  = colors.base;

  shutdown_bgc  = colors.surface1;
  shutdown_fgc  = colors.red;

  lock_bgc      = colors.surface1;
  lock_fgc      = colors.green;

  logout_bgc    = colors.surface1;
  logout_fgc    = colors.blue;

  reboot_bgc    = colors.surface1;
  reboot_fgc    = colors.peach;

in{
  home.packages = with pkgs; [
    wleave
  ];
  programs.wlogout.style = ''
    * {	background-image: none; box-shadow: none; }

    window {
      background-color: ${window_bgc};
      color: ${window_fgc};
    }

    button {
      border-radius: ${border_radius};
      /*border-color: ${lock_fgc};*/
     	/*text-decoration-color: ${shutdown_fgc};*/
      color: ${button_fgc};
     	background-color: ${button_bgc};
     	/*border-style: solid;*/
      border: 10 solid ${button_fgc};
     	background-repeat: no-repeat;
     	background-position: center;
     	background-size: 10%;
      font-size: 50px;
      margin: 20px;
      font-weight: bolder;
    }

    button:focus,
    button:active,
    button:hover {
      background-color: ${button_a_bgc};
      color: ${button_a_fgc};
      outline-style: none;
      font-weight: bolder;
    }

    button#shutdown {
      background-color: ${shutdown_bgc};
      color: ${shutdown_fgc};
      border-color: ${shutdown_fgc};
      background-image: image(url("${pkgs.wleave}/share/wleave/icons/shutdown.svg"));
      background-size: 50%;
    }
    button#shutdown:focus,
    button#shutdown:active,
    button#shutdown:hover {
      background-color: ${shutdown_fgc};
      color: ${shutdown_bgc};
      border-color: ${shutdown_bgc};
    }

    button#lock {
      background-color: ${lock_bgc};
      color: ${lock_fgc};
      border-color: ${lock_fgc};
      background-image: image(url("${pkgs.wleave}/share/wleave/icons/lock.svg"));
      background-size: 50%;
    }
    button#lock:focus,
    button#lock:active,
    button#lock:hover {
      background-color: ${lock_fgc};
      color: ${lock_bgc};
      border-color: ${lock_bgc};
    }

    button#logout {
      background-color: ${logout_bgc};
      color: ${logout_fgc};
      border-color: ${logout_fgc};
      background-image: image(url("${pkgs.wleave}/share/wleave/icons/logout.svg"));
      background-size: 50%;
    }
    button#logout:focus,
    button#logout:active,
    button#logout:hover {
      background-color: ${logout_fgc};
      color: ${logout_bgc};
      border-color: ${logout_bgc};
    }

    button#reboot {
      background-color: ${reboot_bgc};
      color: ${reboot_fgc};
      border-color: ${reboot_fgc};
      background-image: image(url("${pkgs.wleave}/share/wleave/icons/reboot.svg"));
      background-size: 50%;
    }
    button#reboot:focus,
    button#reboot:active,
    button#reboot:hover {
      background-color: ${reboot_fgc};
      color: ${reboot_bgc};
      border-color: ${reboot_bgc};
    }

  '';
}
