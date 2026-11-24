# ~/home-manage/catppuccin/wms/wofi/wofi.nix

{
  imports = [
    ./theme.nix
  ];
  programs.wofi = {
    enable = true;
    settings = {
      location = "bottom";
      allow_markup = true;
      width = 250;
    };
  };
}
