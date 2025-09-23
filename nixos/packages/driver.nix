

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    intel-ocl
    cudatext
  ];
}