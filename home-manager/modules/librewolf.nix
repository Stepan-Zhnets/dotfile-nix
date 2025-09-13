# ~/home-manager/modules/librewolf.nix

{ ... }:{
  programs.librewolf = {
    enable = true;
    languagePacks = [
      "en-US"
      "ru"
    ];
    policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
    };
    settings = {
      #
    };
  };
}