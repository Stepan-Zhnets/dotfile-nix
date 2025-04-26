# ~/nix/nixos/modules/nixvim/plugins/comment.nix

{
  programs.nixvim.plugins.comment = {
    enable = true;

    settings = {
      opleader.line = "gcc";
      toggler.line = "gcc";
    };
  };
}
