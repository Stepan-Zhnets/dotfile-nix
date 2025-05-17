# ~/nix/nixos/modules/devops/devops-bundle.nix

{
  imports = [
    ./docker.nix
    ./jenkins.nix
    ./kubernetes.nix
  ];
}
