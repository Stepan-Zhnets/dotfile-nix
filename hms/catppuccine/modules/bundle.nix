# ~/nix/home-manager/modules/bundle.nix

{
imports = [
  ./alacritty.nix
  ./cava.nix
  ./librewolf.nix
  ./fastfetch.nix
  ./git.nix
  ./zeditor.nix

  ./yazi/yazi.nix
  ./neovim/neovim.nix

  ./wms/bundle.nix
  ];
}
