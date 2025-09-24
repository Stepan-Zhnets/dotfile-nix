

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    intel-ocl
    cudatext

    jellyfin-ffmpeg
    ffmpeg_6-full
    ffmpeg_6
  ];
}