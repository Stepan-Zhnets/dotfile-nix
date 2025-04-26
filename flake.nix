{
	description = "My system configuration";

	inputs = {

		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		polymc.url = "github:PolyMC/PolyMC";

		hyprland.url = "github:hyprwm/Hyprland";
		hyprland-plugins = {
			url = "github:hyprwm/hyprland-plugins";
			inputs.hyprland.follows = "hyprland";
    };

    ayugram-desktop.url = "github:/ayugram-port/ayugram-desktop/release?submodules=1";
		swww.url = "github:LGFae/swww";
	};

	outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ayugram-desktop, ... }@inputs:

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
				inputs.nixvim.nixosModules.nixvim
			];
		};

    homeConfigurations = {
      zhnets = home-manager.lib.homeManagerConfiguration {
			  pkgs = nixpkgs.legacyPackages.${system};
        modules = [ ./home-manager/home.nix ];
      };
      apterm = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [ ./home-manager-apterm/home.nix ];
      };
		};
	};
}
