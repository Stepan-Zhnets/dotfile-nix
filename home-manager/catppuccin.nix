# ~/hms/catppuccine/catppuccin.nix

{
  imports = [ ./catppuccin/bundle.nix ];

  home = {
    username = "zhnets";
		homeDirectory = "/home/zhnets";
		stateVersion = "25.05";
  };
}
