# ~/nix/nixos/modules/bundle.nix

{
imports = [
  ./nm.nix
  ./bootloader.nix
  ./drivers.nix
  # ./fonts.nix
  ./sound.nix
  # ./anti_rkn.nix
  ./user.nix
  ./xserver.nix
  ./steam.nix
];
}
