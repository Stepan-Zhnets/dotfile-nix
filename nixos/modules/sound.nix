# ~/nix/nixos/modiles/sound.nix

{
#hardware.pulseaudio.enable = false;
#services.pulsaudio.enable = false;
# sound.enable = true;

security.rtkit.enable = true;

services.pipewire = {
	enable = true;

	alsa = {
		enable = true;
		support32Bit = true;
	};
	pulse.enable = true;
};
}
