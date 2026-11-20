{ lib, config, pkgs, ... }:
{
  services.zapret2 = {
    enable = true;
    # Указываем пакет zapret, который будет использоваться
    package = pkgs.zapret;

    # Включаем автоматическое определение доменов для обхода
    hosts.autodetect = true;

    # Настройки для конкретных профилей (можно несколько)
    profiles.default = {
      # Список доменов, которые нужно обходить
      include = [
        "discord.com"
        "discordapp.com"
        "youtube.com"
        "googlevideo.com"
        "ytimg.com"
      ];
      # Можно указать параметры для zapret напрямую
      # parameters = [ "--dpi-desync=split2" ];
    };
  };
}