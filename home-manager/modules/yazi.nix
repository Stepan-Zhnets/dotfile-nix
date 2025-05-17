{ lib, ... }: {
  programs.yazi = {
    yazi = {
      #
    };
    enable = true;
    # enableBashIntegration = true;
		enableZshIntegration = true;
    plugins = {

    };
    settings = {
      keymap = {
        #
      };
      #theme = lib.importTOML ./yazi-theme/yazi-theme.toml;
			manager = {
				show_hiden = false;
				sort_by = "minute";
				sort_dir_first = true;
				sort_reverse = true;
			};
		};
	};
}
