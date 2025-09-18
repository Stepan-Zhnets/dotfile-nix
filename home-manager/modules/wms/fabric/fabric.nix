# ~/home-manager/modules/wms/fabric/fabric.nix

{ config, pkgs, lib, ... }:
let
  # если вы в outputs имеете доступ к inputs, можно пробросить через specialArgs
  # или используйте пакет напрямую из nix run.
  # Ниже самый прямой способ: через overlay не нужно, у fabric уже есть flake-пакет.

  fabricPkg = (import (builtins.getFlake "github:Fabric-Development/fabric")).packages.${pkgs.system}.fabric;
  fabricExamples = (builtins.getFlake "github:Fabric-Development/fabric").sourceInfo.outPath + "/examples/bar";
in
{
  home.packages = [
    fabricPkg
  ];

  # Разворачиваем пример бара в ~/.config/fabric
  xdg.configFile."fabric".source = fabricExamples;

  # Автозапуск через systemd -- подберите команду под ваш конфиг
  # Большинство сборок Fabric разворачивают CLI 'fabric'.
  # Пример: запускаем бар из ~/.config/fabric (пример из examples/bar).
  systemd.user.services.fabric-bar = {
    Unit = {
      Description = "Fabric bar";
      After = [ "graphical-session.target" ];
      PartOf = [ "graphical-session.target" ];
    };
    Service = {
      Type = "simple";
      ExecStart = "${fabricPkg}/bin/fabric --config ${config.xdg.configHome}/fabric";
      # Если Wayland: можно задать XDG_SESSION_TYPE, WLR_BACKENDS и т.п. при необходимости
      Environment = [
        "XDG_CONFIG_HOME=${config.xdg.configHome}"
        "PATH=${lib.makeBinPath [ pkgs.bash pkgs.coreutils pkgs.glibcLocales ]}:${config.home.profileDirectory}/bin"
      ];
      Restart = "on-failure";
      RestartSec = 2;
    };
    Install = {
      WantedBy = [ "graphical-session.target" ];
    };
  };

  # Чтобы реально стартовало при входе
  systemd.user.startServices = "sd-switch";
}