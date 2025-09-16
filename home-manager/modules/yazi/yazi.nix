# ~/home-manager/modules/yazi.nix

{
  imports = [
    ./theme/bundle.nix
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