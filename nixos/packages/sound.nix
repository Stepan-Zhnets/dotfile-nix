# ~/nix/nixos/packeges/sound.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [
		pulseaudio
		pamixer
		pipewire
	];
}
