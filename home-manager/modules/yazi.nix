# ~/home-manager/modules/yazi.nix

{
  programs.yazi = {
    enable = true;
    enableFishIntegration = {
      _type = "literalMD";
      text = "[](#opt-home.shell.enableFishIntegration)";
    };
    settings = {
      logo.enabled = false;
    };
    theme = {
      help = {
        on = { fg = "#fe8019"; };
        exec = { fg = "#83a598"; };
        desc = { fg = "#928374"; };
        hovered = { bg = "#504945"; bold = true; };
        footer  = { fg = "#3c3836"; bg = "#a89984"; };
      };
      filetype = {
        rules = [
          { fg = "#83a598"; mime = "image/*"; }

          { fg = "#b8bb26"; mime = "video/*"; }
          { fg = "#b8bb26"; mime = "audio/*"; }

          {fg = "#"; mime = "application/";}

          # Fallback
          { fg = "#a89984"; name = "*"; }
          { fg = "#83a598"; name = "*/"; }
        ]
      };
    };
  };
}