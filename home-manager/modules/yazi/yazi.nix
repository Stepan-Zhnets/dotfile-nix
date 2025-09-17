# ~/home-manager/modules/yazi.nix

{
  imports = [
    ./theme/bundle.nix
  ];

  programs.yazi = {
    enable = true;

    initLua = ./init.lua;
    
    settings = {
      logo.enabled = false;

      # {_MANAGER_}
      mgr = {
        ratio = [
          1
          4
          3
        ];

        # {_SORT_}
        sort_by = "natural";
        sort_sensitive = true;
        sort_reverse = false;
        sort_dir_first = true;
        sort_translit = true; # IF { sort_by = "natural"; };

        linemode = "size_and_mtime";
      };
    };
    theme = {
      # {_./theme/*_}
    };
  };
}