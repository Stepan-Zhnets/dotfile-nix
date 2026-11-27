# { inputs, ... }: {
#   imports = [
#     inputs.happ-nixos.nixosModules.default
#   ];

#   services.happ = {
#     enable = true;
#     # Для Hyprland/Sway может потребоваться:
#     # forceXwayland = true;
#   };
# }
