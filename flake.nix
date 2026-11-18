{
	description = "My system configuration";

inputs = {

# nixpkgs
	nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
	nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

# home-manager
	home-manager = {
		url = "github:nix-community/home-manager";
		inputs.nixpkgs.follows = "nixpkgs";
	};

# nixvim
	nixvim = {
		url = "github:nix-community/nixvim";
		inputs.nixpkgs.follows = "nixpkgs";
	};

# NVF
	nvf.url = "github:notashelf/nvf";

# hyprland
	hyprland.url = "github:hyprwm/Hyprland";

# Niri - noctalia-shell
  noctalia-shell.url = "github:noctalia-dev/noctalia-shell";

# Zapret2
	zapret2-nix = {
		url = "github:ZenonEl/zapret2-nix";
	};

	winapps = {
		url = "github:winapps-org/winapps";
		inputs.nixpkgs.follows = "nixpkgs";
	};

# # fabric
# 	fabric.url = "github:Fabric-Development/fabric";
# 	fabric-libgray.url = "github:Fabric-Development/gray";
# 	fabric-libglace.url = "github:muhchaudhary/glace/hyprland";

# Godot_Engine
	# godot.url = "github:godotengine/godot/4.5";

# PrismLauncher
	# prism-launcher.url = "github:PrismLauncher/PrismLauncher#prismlauncher";

# ayugram-desktop
	# ayugram-desktop.url = "github:ayugram-port/ayugram-desktop/release?submodules=1";

# swww
	# swww.url = "github:LGFae/swww";
};

outputs = {
	self,
	nixpkgs, nixpkgs-stable, home-manager,
	winapps,
	nixvim,
	# nvf,
	hyprland,
	noctalia-shell,
	zapret2-nix,
	# fabric,
	# prism-launcher,
	# ayugram-desktop,
	# swww,
	...
}@inputs:

let
	system = "x86_64-linux";
in {

# {_CONFIGURATION-NIXVIM_}

# # {_CONFIGURATION-NVF_}
# packages.${system}.default = (
# 	nvf.lib.neovimConfiguration {
# 		pkgs = nixpkgs.legacyPackages.${system};
# 		modules = [ ./nvf/nvf-configuration.nix ];
# 	}
# ).neovim;

# {_CONFIGURATION-NIXOS_}
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
		# nvf.nixosModules.default
		(
			{
				pkgs,
				system ? pkgs.system,
				...
			}:
			{
				environment.systemPackages = [
				  noctalia-shell.packages."${system}".default
					winapps.packages."${system}".winapps
					winapps.packages."${system}".winapps-launcher # optional
				];
			}
		)
		#ZAPRET2-NIX
		zapret2-nix.nixosModules.default
		{
			services.zapret2 = {
				enable = true;
				presets = [ "youtube" "discord" ];
				defaultPreset = "youtube";
				firewall.ports.udp = ["443" "50000-65535"];
			};
		}
	];
};

homeConfigurations = {
	zhnets = home-manager.lib.homeManagerConfiguration {
		pkgs = nixpkgs.legacyPackages.${system};
		extraSpecialArgs = { inherit inputs; };
		modules = [
			./home-manager/gruvbox.nix
			# ./home-manager/catppuccin.nix
		];
	};
};
};
}
