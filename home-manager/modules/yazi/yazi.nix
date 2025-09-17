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

      

      plugin = [
        # { mime = "image/heic"; run = "heic"; }
        ];

      input = {};

      confirm = {};

      pick = {};

      which = {};
    };
    theme = {
      # {_./theme/*_}
    };
  };
}