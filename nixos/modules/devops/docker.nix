# ~/nix/nixos/modules/devops/docker.nix

{
  virtualisation.docker = {
    enable = true;

    rootless = {
      enable = false;
      setSocketVariable = true;
    };

    daemon.settings = {
      userland-proxy = false;
      experimental = true;
      metrics-addr = "0.0.0.0:9323";
      ipv6 = true;
      fixed-cidr-v6 = "fd00::/80";
    };
  };

  hardware.nvidia-container-toolkit.enable = true;

  users.users.zhnets.extraGroups = [ "docker" ];
}
