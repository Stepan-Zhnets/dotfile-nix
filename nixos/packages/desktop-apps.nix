# ~/nix/nixos/packages/desktop-apps.nix

{ pkgs, ... }: {
environment.systemPackages = with pkgs; [

	telegram-desktop
	codeium
	# gparted # графический инструмент для разметки диска
	# virtualbox
	# discord
	# simplex-chat-desktop

	#-System
	mission-center

	#-Text
	obsidian
	vscodium-fhs
	vim
	neovim

	#-Term
	# kitty
	alacritty

	#-Studio
	# audacity
	# obs-studio
	# kdenlive
	mpv

	#-File-manager
	# spacedrive
	kdePackages.dolphin

	#-Image
	# aseprite
	# krita

	#-Browser
	# librewolf
	firefox
	chromium
	tor-browser

	#-Office
	libreoffice
	kdePackages.okular

	#-Widgets
	rofi-wayland
	# wofi

	#-Games_Launcher
	steam
	# wineWowPackages.stable
	# wineWowPackages.waylandFull
	
	#-Game_Engine
	#godot_4
	];
}
