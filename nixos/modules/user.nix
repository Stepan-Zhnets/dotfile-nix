# ~/nixos/modules/user.nix

{ pkgs, ... }: {
	# Enable fish shell
	programs.fish.enable = true;

	users = {
    users = {
      zhnets = {
			  isNormalUser = true;
			  description = "zhnets";
			  shell = pkgs.fish;  # Set fish as default shell
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

	services.getty.autologinUser = "zhnets";
}