# ~/home-manager/modules/yazi/theme/bundle.nix

{
  imports = [
    # ./color.nix
    ./fyletype.nix
    ./help.nix
    ./input.nix
    ./manager.nix
    ./select.nix
    ./status.nix
    ./tasks.nix
    ./which.nix
  ]
}