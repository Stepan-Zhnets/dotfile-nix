# ~/nix/home-manager-ap/modules/bundle.nix

{
	imports = [
		./proton.nix
		./alacritty.nix
		# ./vscodium.nix
    ./yazi.nix
    ./cava.nix

    ./wms/hyprland.nix
    ./wms/hyprlock.nix
		./wms/waybar.nix
    ./wms/rofi.nix
	];
}
