# ~/home-manager/modules/yazi.nix

{
  imports = [
    ./theme/bundle.nix
    ./settings/bundle.nix
  ];

  programs.yazi = {
    enable = true;

    initLua = ./init.lua;
    
    settings = {
      logo.enabled = false;

      preview = {
        warp = "yes"
      };
    };
    theme = {
      # {_./theme/*_}
    };
  };
}