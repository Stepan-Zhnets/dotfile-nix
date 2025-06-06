{ pkgs, config, lib, ... }:
with lib;
let
  cfg = config.programs.cava;
  iniFmt = pkgs.formats.ini { };
in {
  meta.maintainers = [ maintainers.bddvlpr ];

  options.programs.cava = {
    enable = mkEnableOption "Cava audio visualizer";

    package = mkPackageOption pkg "cava" { };

    settings = mkOptions {
      type = iniFmt.type;
      default = { };
      example = literalExpression ''
        {
          general.framerate = 60;
          input.method = "alsa";
          smothing.noise_reduction = 88;
          color = {
            background = "'#bf874b'";
            foreground = "'#402d19'";
          };
        }:
      '';
      description = ''
        Settings to be written to the Cava configuration file. See
        <https://github.com/karlstav/cava/blob/master/example_files/config> for
        all available options.
      '';
    };
  };

  config = mkIf cfg.enable {
    home.packages = [ cfg.package ];

    xdg.configFile."cava/config" = mkIf (cfg.settings != { }) {
      text = ''
        ; Generated by Home Manager

        $(generators.toINI { } cfg.settings)
      '';
    };
  };
}
