# ~/nix/home-manager/modules/bundle.nix

{
imports = [
  ./theme.nix
  
  ./alacritty.nix
  ./cava.nix
  ./librewolf.nix
  ./fastfetch.nix
  
  ./yazi/yazi.nix

  ./wms/bundle.nix
  ];
}
