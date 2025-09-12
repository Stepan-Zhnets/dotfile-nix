{
	description = "My system configuration";

inputs = {

# nixpkgs
	nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
	nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

# home-manager
	home-manager = {
		url = "github:nix-community/home-manager";
		inputs.nixpkgs.follows = "nixpkgs";
	};

# nixvim
	#nixvim = {
	#	url = "github:nix-community/nixvim";
	#	inputs.nixpkgs.follows = "nixpkgs";
	#};

# hyprland
	hyprland.url = "github:hyprwm/Hyprland";

	winapps = {
		url = "github:winapps-org/winapps";
		inputs.nixpkgs.follows = "nixpkgs";
	};

# PrismLauncher
	# prism-launcher.url = "github:PrismLauncher/PrismLauncher#prismlauncher";

# ayugram-desktop
	# ayugram-desktop.url = "github:ayugram-port/ayugram-desktop/release?submodules=1";

# swww
	# swww.url = "github:LGFae/swww";
};

outputs = {
	self,
	nixpkgs,
	nixpkgs-stable,
	home-manager,
	winapps,
	# prism-launcher,
	# ayugram-desktop,
	# swww,
	...
}@inputs:

let
system = "x86_64-linux";
in {
# nixos - system hostname
nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
	specialArgs = {
		pkgs-stable = import nixpkgs-stable {
			inherit system;
			config.allowUnfree = true;
		};
		inherit inputs system;
	};
	modules = [
		./nixos/configuration.nix
		(
			{
				pkgs,
				system ? pkgs.system,
				...
			}:
			{
				environment.systemPackages = [
					winapps.packages."${system}".winapps
					winapps.packages."${system}".winapps-launcher # optional
				];
			}
		)
	];
};

homeConfigurations = {
	zhnets = home-manager.lib.homeManagerConfiguration {
		pkgs = nixpkgs.legacyPackages.${system};
		modules = [
			./home-manager/home.nix
		];
	};
};
};
}
