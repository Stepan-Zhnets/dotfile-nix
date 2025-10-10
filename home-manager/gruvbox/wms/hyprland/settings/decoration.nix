# ~/home-manager/modules/wms/hyprland/settings/decoration.nix

{
  wayland.windowManager.hyprland.settings.decoration = {
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
}