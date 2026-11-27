{inputs, ...}:
{
  services.zapret2 = {
  enable = true;
  profiles.default = {
    hosts.include = [ "youtube.com" "discord.com" ];
    parameters = [ "--dpi-desync=disorder2" ];
  };
};
}
