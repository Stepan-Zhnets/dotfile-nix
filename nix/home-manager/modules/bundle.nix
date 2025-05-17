# ~/nix/home-manager/modules/bundle.nix

{
	imports = [
		./proton.nix
		./alacritty.nix
		./vscodium.nix
    ./wms/hyprland.nix
    ./wms/hyprlock.nix
		./wms/waybar.nix
    ./wms/rofi.nix
    # ./theme/catppuccin.nix
	];
}
