# ~/nix/nixos/modules/bundle.nix

{
imports = [
  ./nm.nix
  ./bootloader.nix
  ./bluetooth.nix
  ./drivers.nix
  # ./happ.nix
  ./hyprland.nix
  ./niri.nix
  # ./fonts.nix
  ./sound.nix
  ./user.nix
  ./waydroid.nix
  ./xserver.nix
  ./steam.nix
  ./zapret_1.nix
  ./zapret2.nix
  ./shell.nix

  ./devops/bundle.nix

  ./nixvim/nixvim.nix
];
}
