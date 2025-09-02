{ lib, ... }: {
programs.yazi = {
	enable = true;
	yazi = {
		#
	};
	# enableBashIntegration = true;
	enableZshIntegration = true;
	plugins = {
		#
	};
	settings = {
		yazi = {
			#
		};
		keymap = {
        		#
		};
		# theme = lib.importTOML ./yazi-theme/yazi-theme.toml;
		theme = {};
		manager = {
			show_hiden = false;
			sort_by = "minute";
			sort_dir_first = true;
			sort_reverse = true;
		};
	};
};
}
