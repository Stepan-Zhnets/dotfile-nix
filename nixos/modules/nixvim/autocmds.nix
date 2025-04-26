# ~/nix/nixos/modules/nixvim/autocmds.nix

{
  programs.nixvim = {
    autoCmd = [
      {
        event = [ "VimEnter" ];
        command = ":TransparentEnable";
      }
    ];
  };
}