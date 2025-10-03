# ~/hms/catppuccine/home.nix

{
  imports = [ ./modules/bundle.nix ];

  home = {
    username = "zhnets";
		homeDirectory = "/home/zhnets";
		stateVersion = "25.05";
  };
}
