# ~/home-manager/modules/yazi.nix

{
  imports = [
    ./theme/fyletype.nix
    ./theme/help.nix
    ./theme/manager.nix
    ./theme/status.nix
  ];

  programs.yazi = {
    enable = true;
    settings = {
      logo.enabled = false;
    };
    theme = {
      # {_./theme/*_}
    };
  };
}