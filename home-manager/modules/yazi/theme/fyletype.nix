
{
  programs.yazi.theme.filetype = {
    rules = [
      # Images
      { fg = "#83a598"; mime = "image/*"; }

      # Video
      { fg = "#b8bb26"; mime = "video/*"; }
      { fg = "#b8bb26"; mime = "audio/*"; }

      # {fg = "#"; mime = "application/";}

      # Fallback
      { fg = "#a89984"; name = "*"; }
      { fg = "#83a598"; name = "*/"; }
    ];
  };
}