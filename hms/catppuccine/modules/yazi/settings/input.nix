# ~/home-manager/modules/yazi/settings/input.nix

{
  programs.yazi.settings = {
    input = {
      cursor_blink = true;
    };

    # То же, что и в [input] разделе.
    # Доступно несколько вариантов: trash, delete, overwriteи quit.
    confirm = {};

    # То же, что и в [input] разделе.
    # Доступные селекторы: open.
    pick = {};
  };
}