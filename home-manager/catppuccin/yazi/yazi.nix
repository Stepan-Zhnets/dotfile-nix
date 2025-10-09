# ~/home-manager/modules/yazi.nix

{
  imports = [
    ./theme/bundle.nix
    ./settings/bundle.nix
  ];

  programs.yazi = {
    enable = true;
    enableFishIntegration = true;

    initLua = ./init.lua;
    
    settings = {
      logo.enabled = false;

      which = {
        sort_by = "key";
        sort_sensitive = true; # Сортировать с учетом регистра.
        sort_reverse = false;
        sort_translit = true;
      };

      plugin = [
        # { mime = "image/heic"; run = "heic"; }
        ];
    };
    theme = {
      # {_./theme/*_}
    };
  };
}