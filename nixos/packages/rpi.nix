{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # raspberryPi
    # nixos-install-tools
    # rpi-imager
    # zstd
    # unetbootin
  ];
}
