

{ config, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    #=> FFmpeg
    jellyfin-ffmpeg
    ffmpeg_6-full
    ffmpeg_6

    #=> All
    intel-ocl
    cudatext
  ];
}
