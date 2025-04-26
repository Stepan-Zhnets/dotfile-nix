# ~/nix/nixos/modules/nixvim/plugin/barbar.nix

{
  programs.nixvim.plugins.barbar = {
    enable = true;
    keymaps = {
      silent = true;

      next = "<TAB>";
      previous = "<S-TAB>";
      # close = "<C-q>";
    };
  };
}
