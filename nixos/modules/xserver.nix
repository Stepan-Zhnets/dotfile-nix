# ~/nix/nixos/modules/xserver.nix

{
services = {
	displayManager.gdm.enable = true;
	desktopManager.gnome.enable = true;

	libinput = {
		enable = true;
		mouse.accelProfile = "flat";
		touchpad.accelProfile = "flat";
	};

	xserver = {
		enable = true;
		windowManager.herbstluftwm.enable = true;

		# displayManager = {
		#	autoLogin = {
		#		enable = true;
		#		user = "zhnets";
		#	};
		#	lightdm.enable = true;
		# };

		xkb = {
			layout = "us";
			variant = "";
		};
		videoDrivers = [ "nvidia" ];
		# deviceSection = '' "" '';
	};
};
}
