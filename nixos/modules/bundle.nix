# ~/nix/nixos/modules/bundle.nix

{
imports = [
  ./nm.nix
  ./bootloader.nix
  ./bluetooth.nix
  ./drivers.nix
  # ./fonts.nix
  ./sound.nix
  ./user.nix
  ./xserver.nix
  ./steam.nix
  ./zapret_1.nix
  ./n8n.nix
];
}
