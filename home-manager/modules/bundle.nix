# ~/nix/home-manager/modules/bundle.nix

{
imports = [
  ./alacritty.nix
  ./cava.nix
  ./librewolf.nix
  ./fastfetch.nix
  ./yandex.nix
  
  ./yazi/yazi.nix

  ./wms/bundle.nix
  ];
}
