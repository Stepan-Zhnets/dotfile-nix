# ~/nvf/nvf-configuration.nix

{ pkgs, lib, ... }:
{
  vim = {
    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
    };

    statusline.lualine.enable = true;
    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;

    languages = {
      enableLSP = true;
      enableTreesitter = true;
      
      nix.enable = true;
      python.enable = true;
      ts.enable = true;
      js.enable = true;
      json.enable = true;
    };
  };
}