# ~/nix/nixos/packages/desktop-apps.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [

    telegram-desktop
    codeium
		# gparted # графический инструмент для разметки диска
    virtualbox
    discord

		# Text
		obsidian
		vscodium-fhs
		vim
		neovim

		# Term
		kitty
		alacritty

		# Studio
		audacity
		obs-studio
		kdenlive
		mpv

		# File-manager
		spacedrive

		# Image
		aseprite
		krita

		# Browser
		librewolf
		firefox
    		chromium
    		tor-browser

		# Office
		libreoffice
		kdePackages.okular

		# Widgets
		rofi-wayland
		wofi

		# Games
		steam
		wineWowPackages.stable
		wineWowPackages.waylandFull

		godot_4
	];
}
