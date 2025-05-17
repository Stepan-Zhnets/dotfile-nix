# ~/nix/nixos/modules/user.nix

{ pkgs, ... }: {
	programs.zsh.enable = true;

	users = {
		# defaultUserShell = pkgs.zsh;

    users = {
      zhnets = {
			  isNormalUser = true;
			  description = "zhnets";
			  extraGroups = [
				  "networkmanager"
				  "wheel"
				  "input"
				  "libvirtd"
				  "cron"
			  ];
        packages = with pkgs; [];
      };
      apterm = {
        isNormalUser = true;
        description = "apterm";
        extraGroups = [
          "networkmanager"
          "whell"
          "input"
          "libvirtd"
        ];
        packages = with pkgs; [];
      };
		};
	};

	# services.getty.autologinUser = "zhnets";
}
