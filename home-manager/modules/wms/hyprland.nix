# ~/nix/home-manager/modules/wms/hyprland.nix

{ pkgs, lib, ... }: {
	wayland.windowManager.hyprland = {
    		enable = true;
		xwayland.enable = true;

		plugins = [
			# inputs.hyprland-plugins.packages."${pkgs.system}".borders-plus-plus
		];

settings = {
			
	"$mainMod" = "ALT"; # SUPER | ALT

	monitor = [
        "eDP-1,1920x1200@165,auto,1"
        "HDMI-A-1,1920x1080@60,auto,1,transform,3"
      ];

	env = [
		"XDG_CURRENT_DESKTOP,Hyprland"
		"XDG_SESSION_TYPE,wayland"
		"XDG_SESSION_DESKTOP,Hyprland"
		"XCURSOR_SIZE,36"
		"QT_QPA_PLATFORM,wayland"
		"XDG_SCREENSHOTS_DIR,~/screens"
	];

	debug = {
		disable_logs = false;
		enable_stdout_logs = true;
	};

	input = {
		kb_layout = "us,ru";
		kb_variant = "lang";
		kb_options = "grp:alt_shift_toggle";

		follow_mouse = 1;

		touchpad = {
			natural_scroll = false;
		};

		sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
	};

	general = {
		gaps_in = 5;
		gaps_out = 10;

		border_size = 3;
        	
    #"col.active_border" = "rgba(33ccffee) # rgba(00ff99ee) 45deg";
    #"col.inactive_border" = "rgba(595959aa)";

		resize_on_border = false;
		no_border_on_floating = true;
		allow_tearing = false;

		layout = "dwindle";

#		no_cursor_warps = false;
	};

	decoration = {
		rounding = 10;

		active_opacity = 1.0;
		inactive_opacity = 1.0;

		blur = {
			enabled = true;
			size = 8;
			passes = 1;

			vibrancy = 0.1696;
			new_optimizations = true;
		};

#		drop_shadow = true;
#        	shadow_range = 4;
#        	shadow_render_power = 3;
#        	"col.shadow" = "rgba(1a1a1aee)";
	};

	animations = {
		enabled = true;

		bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
		# bezier = "myBezier, 0.33, 0.82, 0.9, -0.08";

		animation = [
			"windows,     1, 7,  myBezier"
			"windowsOut,  1, 7,  default, popin 80%"
			"border,      1, 10, default"
			"borderangle, 1, 8,  default"
			"fade,        1, 7,  default"
			"workspaces,  1, 6,  default"
		];
	};

	dwindle = {
		pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
		preserve_split = true; # you probably want this
	};

#	master = {
#		new_is_master = true;
#	};

	gestures = {
		workspace_swipe = true;
		workspace_swipe_fingers = 3;
		workspace_swipe_invert = false;
		workspace_swipe_distance = 200;
		workspace_swipe_forever = true;
	};

	misc = {
		animate_manual_resizes = true;
		animate_mouse_windowdragging = true;
		enable_swallow = true;
		render_ahead_of_time = false;
		disable_hyprland_logo = true;
	};

	windowrule = [
		"float, ^(imv)$"
		"float, ^(mpv)$"
	];

	exec-once = [
		"swww init"
		"swww img ~/Pictures/ES-Pier-light.jpg"
		"waybar"
		"hyprlock"
		"wl-paste --type text --watch cliphist store"
		"wl-paste --type image --watch cliphist store"
	];

      	bind = [
		# "$mainMod, V, exec, cliphist list | wofi --dmenu | cliphist decode | wl-copy"

		"$mainMod, Q, exec, alacritty"
		"$mainMod, C, killactive,"
		"$mainMod, M, exit,"
		"$mainMod, E, exec, spacedrive" # dolphin"
		# "$mainMod, Y, exec, yazi"
		"$mainMod, V, togglefloating,"
		# "$mainMod, D, exec, wofi --show drun"
		"$mainMod, P, pseudo, # dwindle"
		"$mainMod, J, togglesplit, # dwindle"
    		"$mainMod, R, exec, rofi -show drun"
    		"$mainMod, L, exec, hyprlock"

		# Move focus with mainMod + arrow keys
		"$mainMod, left,  movefocus, l"
		"$mainMod, right, movefocus, r"
		"$mainMod, up,    movefocus, u"
		"$mainMod, down,  movefocus, d"

		# Moving windows
		"$mainMod SHIFT, left,  swapwindow, l"
		"$mainMod SHIFT, right, swapwindow, r"
		"$mainMod SHIFT, up,    swapwindow, u"
		"$mainMod SHIFT, down,  swapwindow, d"

		# Window resizing                     X  Y
		"$mainMod CTRL, left,  resizeactive, -60 0"
		"$mainMod CTRL, right, resizeactive,  60 0"
		"$mainMod CTRL, up,    resizeactive,  0 -60"
		"$mainMod CTRL, down,  resizeactive,  0  60"

		# Switch workspaces with mainMod + [0-9]
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

		# Move active window to a workspace with mainMod + SHIFT + [0-9]
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

		# Scroll through existing workspaces with mainMod + scroll
		"$mainMod, mouse_down, workspace, e+1"
		"$mainMod, mouse_up, workspace, e-1"

		# Keyboard backlight
		"$mainMod, F3, exec, brightnessctl -d *::kbd_backlight set +33%"
		"$mainMod, F2, exec, brightnessctl -d *::kbd_backlight set 33%-"

		# Volume and Media Control
		", XF86AudioRaiseVolume, exec, pamixer -i 5 "
		", XF86AudioLowerVolume, exec, pamixer -d 5 "
		", XF86AudioMute, exec, pamixer -t"
		", XF86AudioMicMute, exec, pamixer --default-source -m"
        
		# Brightness control
		", XF86MonBrightnessDown, exec, brightnessctl set 5%- "
		", XF86MonBrightnessUp, exec, brightnessctl set +5% "

		# Configuration files
		# ''$mainMod CTRL, N, exec, alacritty -e sh -c "rb"''
		# ''$mainMod CTRL, C, exec, alacritty -e sh -c "conf"''
		''$mainMod CTRL, H, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/hyprland.nix"''
		''$mainMod CTRL, W, exec, alacritty -e sh -c "nvim ~/nix/home-manager/modules/wms/waybar.nix''
		# '', Print, exec, grim -g "$(slurp)" - | swappy -f -''

		# Waybar
#		"$mainMod, B, exec, pkill -SIGUSR1 waybar"
#		"$mainMod, W, exec, pkill -SIGUSR2 waybar"

		# Disable all effects
#		"$mainMod Shift, G, exec, ~/.config/hypr/gamemode.sh "
	];

	# Move/resize windows with mainMod + LMB/RMB and dragging
	bindm = [
		"$mainMod, mouse:272, movewindow"
		"$mainMod, mouse:273, resizewindow"
	];
};
	};
}
