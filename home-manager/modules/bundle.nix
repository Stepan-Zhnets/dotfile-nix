# ~/nix/home-manager/modules/bundle.nix

{
imports = [
  ./alacritty.nix
  ./cava.nix
  ./librewolf.nix
  ./fastfetch.nix
  ./git.nix
  
  ./yazi/yazi.nix

  ./wms/bundle.nix
  ];
}
