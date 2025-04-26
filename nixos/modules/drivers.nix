# ~/nix/nixos/modules/drivers.nix

{ pkgs, ... }: {
	hardware = {
		graphics = { # OpenGL
			enable = true;
			# driSupport = true;
			# driSupport32Bit = true;
			enable32Bit = true;
		};

		nvidia = {
			open = true;

			modesetting.enable = true;

			prime = {
				sync.enable = true;

				# Integrated
				intelBusId = "PCI:0:2:0";

				# Dedicated
				nvidiaBusId = "PCI:1:0:0";
			};
		};
	};

	services.xserver.videoDrivers = ["nvidia"];
}
