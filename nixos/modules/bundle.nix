# ~/nix/nixos/modules/bundle.nix

{
imports = [
  ./nm.nix
  ./bootloader.nix
  ./bluetooth.nix
  ./drivers.nix
  ./hyprland.nix
  # ./fonts.nix
  ./sound.nix
  ./user.nix
  ./xserver.nix
  ./steam.nix
  ./stylix.nix
  ./zapret_1.nix
  # ./n8n.nix
  ./shell.nix

  ./devops/bundle.nix

  ./nixvim/nixvim.nix
];
}
