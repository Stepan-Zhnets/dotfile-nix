{ pkgs, ... }:{
programs.wlogout = {
	enable = true;
	layout = [
	{
		label = "lock";
		action = "hyprlock";
		text = "Lock - L";
		keybind = "l";
	}
	{
		label = "logout";
		action = "loginctl terminate-user $USER";
		text = "Logout - E";
		keybind = "e";
	}
	{
		label = "reboot";
		action = "systemctl reboot";
		text = "Reboot - R";
		keybind = "r";
	}
	{
		label = "shutdown";
		action = "systemctl poweroff";
		text = "Shutdown - S";
		keybind = "s";
	}
	];
	# package = ;
	# style = '''';
};
}
