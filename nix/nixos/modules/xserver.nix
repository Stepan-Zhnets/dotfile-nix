# ~/nix/nixos/modules/xserver.nix

{
	services.xserver = {
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

		# libinput = {
		#	enable = true;
		#	mouse.accelProfile = "flat";
		#	touchpad.accelProfile = "flat";
		# };

		videoDrivers = [ "nvidia" ];
		# deviceSection = '' "" '';

		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;
	};

	services.libinput = {
		enable = true;
		mouse.accelProfile = "flat";
		touchpad.accelProfile = "flat";
	};
}
