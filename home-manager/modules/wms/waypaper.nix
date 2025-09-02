{ pkgs, ... }: {
home.packages = with pkgs; [ waypaper ];
xdg.configFile."waypaper/config.ini".text = ''
[Settings]
language = en
folder = ~/dotfile-nix/walls/mikluki/
	~/dotfile-nix/walls/dharmx/walls/abstract/
	# ~/dotfile-nix/walls/saint-13/

wallpaper = ~/Pictures/wallpaper.jpg
backend = swww
#swaybg
monitors = All
fill = Fill
sort = name
color = #ffffff
subfolders = True
all_subfolders = False
show_hidden = False
show_gifs_only = False
show_path_in_tooltip = True
number_of_columns = 3
use_xdg_state = False
zen_mode = False
swww_transition_type = any
swww_transition_step = 90
swww_transition_angle = 0
swww_transition_duration = 2
swww_transition_fps = 60
mpvpaper_sound = False
mpvpaper_options = 
post_command =  
'';
}
