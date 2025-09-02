# ~/nix/nixos/packages/bundle.nix

{ pkgs, inputs, ... }: {
imports = [
	./anti-rkn.nix
	./desktop-apps.nix
	./coding-stuff.nix
	./cli-utils.nix
	./gui-utils.nix
	./wayland-stuff.nix
	./wms-and-stuff.nix
	./sound.nix
	# ./gpu-stuff.nix
	./screenshotting.nix
	#./games.nix
	# ./python-pkg.nix
	# ./python.nix
	./rpi.nix
];

nixpkgs.config = {
	allowUnfree = true;
	permittedInsecurePackages = [
		"python-2.7.18.8"
		"electron-25.9.0"
	];
};

environment.systemPackages = with pkgs; [

inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop

# Other
home-manager
# spice-vdagent

libsForQt5.qtstyleplugin-kvantum
libsForQt5.qt5ct
papirus-nord

# Desktop apps
# Coding stuff
# CLI utils
# GUI utils
# Wayland stuff
# WMs and stuff
# Sound
# GPU stuff
# Screenshotting
];

fonts.packages = with pkgs; [
	jetbrains-mono
	noto-fonts
	noto-fonts-emoji
	twemoji-color-font
	font-awesome
	powerline-fonts
	powerline-symbols

	#nerdfonts.symbols-only
	#(nerdfonts.override {
	#	fonts = [
	#		"NerdFontsSymbolsOnly"
	#	];
	#})
];
}
