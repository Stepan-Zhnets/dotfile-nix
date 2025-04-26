{
  services.openssh = {
    enable = true;
    permitRootLogin = "no";
    passwordAuthentication = true;
    ports = [ 22 ];
  };
}
