# ~/nix/nixos/modules/nixvim/nixvim.nix

{
	imports = [
		./opts.nix
		./keymaps.nix
		./autocmds.nix
		./plugins/plugins-bundle.nix
	];

	programs.nixvim = {
		enable = true;

		defaultEditor = true;
		colorschemes.catppuccin.enable = true;
	};
}
