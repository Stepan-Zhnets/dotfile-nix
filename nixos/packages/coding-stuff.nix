# ~/nix/nixos/packages/coding-stuff.nix

{ pkgs, ... }: {
	environment.systemPackages = with pkgs; [

    # Other
    github-desktop

    # AI
    lmstudio
    koboldcpp

    # DevOps
    docker
    kubernetes
    jenkins
    terraform
    ansible
    prometheus


    # JS
    nodejs
    yarn
    twitterBootstrap

    # Python
    python
    python-qt
    python314
    python313
    python311
    python3
    python2
    devenv

    uv
    ruff

	flet-client-flutter
    # (python3.withPakages (ps: with ps; [requests]))

    # Rust
    # rustc
    # cargo
    # cargo-tauri
  ];
}
