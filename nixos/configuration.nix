{ config, pkgs, ... }:
{
	imports = [ # Include the results of the hardware scan.
		#/etc/nixos/hardware-configuration.nix
		./hardware-configuration.nix
		./modules/bundle.nix
		./packages/bundle.nix
	];

	nix.settings.experimental-features = ["nix-command" "flakes"];

	networking.hostName = "nixos"; # Define your hostname.

	# Set your time zone.
	time.timeZone = "Europe/Moscow";

	# Select internationalisation properties.
	i18n.defaultLocale = "en_US.UTF-8";

	i18n.extraLocaleSettings = {
		LC_ADDRESS = "ru_RU.UTF-8";
		LC_IDENTIFICATION = "ru_RU.UTF-8";
		LC_MEASUREMENT = "ru_RU.UTF-8";
		LC_MONETARY = "ru_RU.UTF-8";
		LC_NAME = "ru_RU.UTF-8";
		LC_NUMERIC = "ru_RU.UTF-8";
		LC_PAPER = "ru_RU.UTF-8";
		LC_TELEPHONE = "ru_RU.UTF-8";
		LC_TIME = "ru_RU.UTF-8";
	};

	# Enable CUPS to print documents.
	services.printing.enable = true;

	# Install firefox.
	programs.firefox.enable = true;

	system.stateVersion = "24.11"; # Did you read the comment?
}
