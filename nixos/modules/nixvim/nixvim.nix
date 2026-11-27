# ~/nixos/modules/nixvim/nixvim.nix

{
  imports = [
    #
  ];

  programs.nixvim = {
    enable = false;

    defaultEditor = true;
    colorschemes.gruvbox.enable = true;
  };
}
