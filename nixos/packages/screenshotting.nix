# ~/nix/nixos/packages/screenshotting.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [
		# grim # захват изображений из компоновщиков Wayland
		# grimblast # Просмоторщик для скриншотов в Hyprland
		# slurp
		# flameshot
		# swappy # Инструмент для редактирования снимков
	];
}
