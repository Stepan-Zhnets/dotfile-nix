{ inputs, ... }:
{
  services.zapret2 = {
    enable = true;
    firewall.configureAutomatically = true;

    profiles.default = {
      priority = 1000;
      hosts.include = [ "example.com" ];
      parameters = [
        "--filter-tcp=443"
        "--payload=tls_client_hello"
        "--lua-desync=fake:blob=fake_default_tls:tcp_ts=-1000:repeats=1"
        "--lua-desync=fakedsplit:pos=1,midsld:tcp_ts=-1000"
      ];
    };
  };
}
