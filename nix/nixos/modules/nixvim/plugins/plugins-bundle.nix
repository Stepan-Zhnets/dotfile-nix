# ~/nix/nixos/modules/nixvim/pludins/plugins-bundle.nix

{
  imports = [
    ./lualine.nix
    ./transparent.nix
    ./neotree.nix
    ./mini.nix
    ./comment.nix
    ./floaterm.nix
    # ./telescope.nix
    # ./barbar.nix
    ./nix.nix
    ./lsp.nix
    ./cmp.nix
  ];
}
