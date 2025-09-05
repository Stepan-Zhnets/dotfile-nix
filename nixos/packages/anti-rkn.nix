# ~/dotfile-nix/nixos/...?

# Софт, используемый для обхода блокировок

{ pkgs, ...  }:{
environment.systemPackages = with pkgs;[
	linuxKernel.packages.linux_6_12.amneziawg
	amneziawg-go
	amneziawg-tools

	zapret

	namespaced-openvpn
];
}
