# ~/home-manager/modules/wms/eww/eww.nix

{
programs.eww = {
  enable = true;
  package = pkgs.eww;
  enableBashFishIntegration = true;
  config.Dir = ./*;
};
}
