# ~/home-manager/modules/cava.nix

{
  programs.cava = {
    enable = true;
    # package = [];
    settings = {

      # GRUVBOX-RAINBOW
      # color = {
      #   # background = "'#1e1e2e'";

      #   gradient = 1;

      #   gradient_color_1 = "'#458588'";
      #   gradient_color_2 = "'#689d6a'";
      #   gradient_color_3 = "'#98971a'";
      #   gradient_color_4 = "'#d79921'";
      #   gradient_color_5 = "'#b16286'";
      #   gradient_color_6 = "'#cc241d'";
      # };

      # GRUVBOX-PLAIN-DARK
      color = {
        # background = "'#1e1e2e'";

        gradient = 1;

        gradient_color_1 = "'#928374'";
        gradient_color_2 = "'#7c6f64'";
        gradient_color_3 = "'#665c54'";
        gradient_color_4 = "'#504945'";
        gradient_color_5 = "'#3c3836'";
        gradient_color_6 = "'#282828'";
        gradient_color_7 = "'#1d2021'";
      };

      # GRUVBOX-PLAIN-DARK-INVERSION
      # color = {
      #   # background = "'#1e1e2e'";

      #   gradient = 1;

      #   gradient_color_1 = "'#1d2021'";
      #   gradient_color_2 = "'#282828'";
      #   gradient_color_3 = "'#3c3836'";
      #   gradient_color_4 = "'#504945'";
      #   gradient_color_5 = "'#665c54'";
      #   gradient_color_6 = "'#7c6f64'";
      #   gradient_color_7 = "'#928374'";
      # };
    };
  };
}