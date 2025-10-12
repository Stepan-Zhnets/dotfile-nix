# ~/home-manager/modules/yazi/settings/bundle.nix

{
  imports = [
    ./input.nix
    ./mgr.nix
    ./open_er.nix
    ./preview.nix
    ./tasks.nix
  ];
}