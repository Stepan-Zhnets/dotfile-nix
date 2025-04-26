# ~/nixos/modules/nixvim/plugins/neotree.nix

{
  programs.nixvim.plugins.neo-tree = {
    enable = true;
    filesystem.followCurrentFile.enabled = true;
    closeIfLastWindow = true;
  };
}