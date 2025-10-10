# ~/hms/catppuccine/home.nix

{
  imports = [ ./catppuccin/bundle.nix ];

  home = {
    username = "zhnets";
		homeDirectory = "/home/zhnets";
		stateVersion = "25.05";
  };
}
