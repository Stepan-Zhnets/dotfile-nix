# ~/home-manager/modules/yazi/settings/open_er.nix

{
  programs.yazi.settings = {
    # {_OPENER_}
    opener = {
      # Настройте доступные открыватели, которые можно использовать в [open].
      video = [
        { run = "vlc \"$@\""; orphan = true; for = "unix"; }
      ];
      edit = [
        { run = "vim \"$@\""; block = true; for = "unix"; }
      ];
      open = [
        # { run =; for = "unix"; }
      ];
    };

    # {_OPEN_}
    open = {
      # Задайте правила открытия определённых файлов.
      rules = [
        { mime = "video/*"; use = "video"; }
      ];
    };
  };
}