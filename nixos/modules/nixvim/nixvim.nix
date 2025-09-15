# ~/nixos/modules/nixvim/nixvim.nix

{ nixvim, ... }: {
  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    colorschemes.oxocarbon.enable = true;
  };
}
