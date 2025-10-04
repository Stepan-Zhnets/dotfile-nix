# ~/nixos/packages/code.nix


{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=> Python
    python3
    uv

    #=> Fabric
    gtk
    cairo
    gtk-layer-shell
    gobject-introspection
    pkgconf

    #=> N8N
    # n8n

    #=> JS
    nodejs_22

    #=> DevOps
    docker
  ];
}
