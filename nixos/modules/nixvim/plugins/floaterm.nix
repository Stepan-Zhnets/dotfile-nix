# ~/nix/nixos/modules/nixvim/plugins/floaterm.nix

{
  programs.nixvim.plugins.floaterm = {
    enable = true;

    width = 0.8;
    height = 0.8;

    title = "";

    keymaps.toggle = "<C-b>";
  };
}
