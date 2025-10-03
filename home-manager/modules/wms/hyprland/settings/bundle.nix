# ~/home-manager/modules/wms/hyprland/settings/bundle.nix

{
  imports = [
    ./animations.nix
    ./bind.nix
    ./bindm.nix
    # ./color.nix
    ./decoration.nix
    ./exec_once.nix
    ./general.nix
    ./gestures.nix
    ./misc.nix
    ./windowrule.nix
  ];
}