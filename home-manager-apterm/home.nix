# ~/nix/home-manager-apterm/home.nix
{
  imports = [
    ./modules/bundle.nix
  ];

  home = {
    username = "zhnets";
    homeDirectory = "/home/zhnets";
    stateVersion = "24.11";
  };

#  home = {
#    username = "apterm";
#    homeDirectory = "home/apterm";
#    stateVersion = "24.11";
#  };
}
