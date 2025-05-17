# ~/nix/nixos/modules/steam.nix

{
	programs = {
		steam = {
			enable = true;
			gamescopeSession.enable = true;
			protontricks.enable = true;
		};

		gamemode.enable = true;
	};
}
