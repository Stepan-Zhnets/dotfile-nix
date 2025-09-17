# ~/home-manager/modules/yazi/settings/preview.nix

{
  programs.yazi.settings.preview = {
    warp = "yes"; # Перенос длинных строк.

    # tab_size = # Ширина табуляции в пробелах.

    # {_IMAGE_}
    # max_width     = 10000;
    # max_height    = 10000;
    # cache_dir     = # Папка кэша по умолчанию (указывается путь).
    # image_delay   = 0 # Задержка перед просмотром изображения (число).
    # image_filter  = "lanczos3"; # Фильтр маштаба изображений.
    # image_quality = ; # (число).
    ueberzug_scale  = ; # Коэффициент масштабирования изображения Ueberzug (число с плавающей точкой).
    ueberzug_offset = []; # [x, y, width, height]; смещение изображения Ueberzug в единицах ячейки.
  };
}