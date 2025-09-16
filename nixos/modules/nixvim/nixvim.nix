# ~/nixos/modules/nixvim/nixvim.nix

{
  imports = [
    #
  ];

  programs.nixvim = {
    enable = true;

    defaultEditor = true;
    colorschemes.gruvbox.enable = true;
  };
}
