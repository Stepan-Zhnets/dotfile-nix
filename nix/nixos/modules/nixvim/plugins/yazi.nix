# ~/nix/nixos/modules/nixvim/plugins/yazi.nix
{
  programs.nixvim.plugins.yazi = {
    enable = true;
    autoLoad = true;
  };
}
