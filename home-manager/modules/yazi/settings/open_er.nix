# ~/home-manager/modules/yazi/settings/open_er.nix

{
  programs.yazi.settings = {
    # {_OPENER_}
    opener = {
        # Настройте доступные открыватели, которые можно использовать в [open].
        play = [
          # { run =; for = "unix"; };
        ];
        edit = [
          # { run =; for = "unix"; }
        ];
        open = [
          # { run =; for = "unix"; }
        ];
      };

      # {_OPEN_}
      open = [
        # Задайте правила открытия определённых файлов.
      ];
  };
}