# ~/nixos/modules/user.nix

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
			  ];
        packages = with pkgs; [
          kdePackages.kate
        ];
      };
		};
	};

	# services.getty.autologinUser = "zhnets";
}