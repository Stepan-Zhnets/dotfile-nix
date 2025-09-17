# ~/home-manager/modules/yazi/settings/mgr.nix

{
  programs.yazi.settings.mgr = {
    ratio = [
      1
      4
      3
    ];

    # {_SORT_}
    sort_by        = "natural";
    sort_sensitive = true;
    sort_reverse   = false;
    sort_dir_first = true;
    sort_translit  = true; # IF { sort_by = "natural"; };

    linemode       = "size_and_mtime";

    # {_SHOW_}
    show_hidden    = false; # Скрытые файлы/директории
    show_symlink   = true;

    # scrolloff

    mouse_events   = [ "click" "scroll" "touch" "move" "drag"];

    title_format   = "{cwd}";
  };
}