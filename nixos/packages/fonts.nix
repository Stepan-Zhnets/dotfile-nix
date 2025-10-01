# ~/nixos/packages/fonts.nixos

{
  fonts.packages = with pkgs; [
    #=> NerdFonts
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
  ]
}
