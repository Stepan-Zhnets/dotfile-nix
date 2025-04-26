{ pkgs, ... }:

let
  # Убедитесь, что у вас есть необходимые пакеты для работы Cava
  cava = pkgs.cava;
in

{
  home.packages = [
    cava
  ];

  # Настройка Cava (если нужно)
  # Вы можете создать файл конфигурации для Cava, если он вам нужен
  # Например, создайте ~/.config/cava/config
  home.file."config/cava/config".text = ''
    [general]
    update_interval = 100
    framerate = 30

    [input]
    method = pulse

    [output]
    method = ncurses
    # Вы можете добавить дополнительные настройки вывода здесь

    [bars]
    bar_count = 64
    bar_spacing = 1
    bar_width = 2
    # Другие настройки баров...

    [color]
    background = default
    foreground = '#402d19'
  '';
}
