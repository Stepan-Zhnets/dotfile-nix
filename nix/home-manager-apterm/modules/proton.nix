# ~/nix/home-manager/modules/proton.nix

{ pkgs, ... }: {
	home.packages = with pkgs; [
		protonup-qt
	];

	home.sessionVariables = {
		STEAM_EXTRA_COMPAT_TOOLS_PATHS = "\${HOME}/.steam/root/compatibilitytools.d";
	};
}
