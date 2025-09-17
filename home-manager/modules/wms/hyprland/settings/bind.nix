# ~/home-manager/modules/wms/hyprland/settings/bind.nix

{
  wayland.windowManager.hyprland.settings.bind = [
		# "$mainMod, V, exec, cliphist list | wofi --dmenu | cliphist decode | wl-copy"

    # {_ЗАПУСК_СОФТА_}
		"$mainMod, Q, exec, alacritty"
		"$mainMod, C, killactive,"
		"$mainMod, M, exit,"
		"$mainMod, E, exec, dolphin" # dolphin"
		"$mainMod, Y, exec, yazi"
		"$mainMod, V, togglefloating,"
		# "$mainMod, D, exec, wofi --show drun"
		"$mainMod, P, pseudo, # dwindle"
		"$mainMod, J, togglesplit, # dwindle"
    "$mainMod, R, exec, rofi -show drun"
    "$mainMod, L, exec, wlogout" # hyprlock

		# {_ПЕРЕМЕЩЕНИЕ_ФОКУСА_}
		"$mainMod, left,  movefocus, l"
		"$mainMod, right, movefocus, r"
		"$mainMod, up,    movefocus, u"
		"$mainMod, down,  movefocus, d"

		# {_ДВИЖЕНИЕ_ОКНА_}
		"$mainMod SHIFT, left,  swapwindow, l"
		"$mainMod SHIFT, right, swapwindow, r"
		"$mainMod SHIFT, up,    swapwindow, u"
		"$mainMod SHIFT, down,  swapwindow, d"

		# {_ИЗМЕНЕНИЕ_РАЗМЕРА_ОКНА_}                    X  Y
		"$mainMod CTRL, left,  resizeactive, -60 0"
		"$mainMod CTRL, right, resizeactive,  60 0"
		"$mainMod CTRL, up,    resizeactive,  0 -60"
		"$mainMod CTRL, down,  resizeactive,  0  60"

		# {_ПЕРЕКЛЮЧЕНИЕ_РАБОЧИХ_ПРОСТРАНСТВ_}
		"$mainMod, 1, workspace, 1"
		"$mainMod, 2, workspace, 2"
		"$mainMod, 3, workspace, 3"
		"$mainMod, 4, workspace, 4"
		"$mainMod, 5, workspace, 5"
		"$mainMod, 6, workspace, 6"
		"$mainMod, 7, workspace, 7"
		"$mainMod, 8, workspace, 8"
		"$mainMod, 9, workspace, 9"
		"$mainMod, 0, workspace, 10"

		# {_ПЕРЕМЕСТИТЬ_АКТИВНОЕ_ОКНО_В_РАБОЧУЮ_ОБЛАСТЬ_}
		"$mainMod CTRL, 1, movetoworkspacesilent, 1"
		"$mainMod CTRL, 2, movetoworkspacesilent, 2"
		"$mainMod CTRL, 3, movetoworkspacesilent, 3"
		"$mainMod CTRL, 4, movetoworkspacesilent, 4"
		"$mainMod CTRL, 5, movetoworkspacesilent, 5"
		"$mainMod CTRL, 6, movetoworkspacesilent, 6"
		"$mainMod CTRL, 7, movetoworkspacesilent, 7"
		"$mainMod CTRL, 8, movetoworkspacesilent, 8"
		"$mainMod CTRL, 9, movetoworkspacesilent, 9"
		"$mainMod CTRL, 0, movetoworkspacesilent, 10"

		# {_ПРОКРУТКА_СУЩЕСТВУЮЩИХ_РАБОЧИХ_ОБЛАСТЕЙ_}
		"$mainMod, mouse_down, workspace, e+1"
		"$mainMod, mouse_up, workspace, e-1"

		# {_ПОДСВЕТКА_КЛАВИАТУРЫ_}
		"$mainMod, F3, exec, brightnessctl -d *::kbd_backlight set +33%"
		"$mainMod, F2, exec, brightnessctl -d *::kbd_backlight set 33%-"

		# {_УПРАВЛЕНИЕ_ГРОМКОСТЬЮ_И_МУЛЬТИМЕДИА_}
		", XF86AudioRaiseVolume, exec, pamixer -i 5 "
		", XF86AudioLowerVolume, exec, pamixer -d 5 "
		", XF86AudioMute, exec, pamixer -t"
		", XF86AudioMicMute, exec, pamixer --default-source -m"

		# {_РЕГУЛИРОВКА_ЯРКОСТИ_}
		", XF86MonBrightnessDown, exec, brightnessctl set 5%- "
		", XF86MonBrightnessUp, exec, brightnessctl set +5% "

		# Configuration files
		# ''$mainMod CTRL, N, exec, alacritty -e sh -c "rb"''
		# ''$mainMod CTRL, C, exec, alacritty -e sh -c "conf"''
		# ''$mainMod CTRL, H, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/hyprland.nix"''
		# ''$mainMod CTRL, W, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/waybar.nix''
		# '', Print, exec, grim -g "$(slurp)" - | swappy -f -''

		# Waybar
    # "$mainMod, B, exec, pkill -SIGUSR1 waybar"
    # "$mainMod, W, exec, pkill -SIGUSR2 waybar"

		# Disable all effects
  ];
}