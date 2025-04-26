# ~/nix/nixos/packages/wayland-stuff.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [
		xwayland # 
		wl-clipboard # Утилита для копирования/вставки для wayland
		cliphist # История буфера обмена
	];
}
