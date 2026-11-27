{ inputs, ... }: {
  imports = [
    inputs.zapret2-nix.nixosModules.default
  ];

  services.zapret2 = {
    enable = true;
    # Пример настройки профиля для обхода блокировок YouTube/Discord
    profiles.default = {
      # Домены, которые нужно обходить
      hosts.include = [
        "youtube.com"
        "googlevideo.com"
        "discord.com"
        "discordapp.com"
      ];
      # Можно указать IP-адреса или подсети
      ips.include = [ ];
      # Параметры стратегии обхода (подбираются индивидуально)
      parameters = [
        "--dpi-desync=disorder2"
        "--dpi-desync-split-pos=1"
      ];
    };
  };
}
