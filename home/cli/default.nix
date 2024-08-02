{pkgs, ...}: {
  imports = [
    ./git.nix
    ./zsh.nix
    ./yazi.nix
    ./tmux.nix
    ./gitui.nix
  ];

  home.packages = with pkgs; [
    vim
    ffmpeg
    git
    lsd
    fd
    btop
    htop
    neofetch
    neovim
    brightnessctl
    light
    pamixer
    tldr
    fzf
    zip
    alacritty
    xclip
    unzip
    tree
    xorg.xev
    ncdu
    tmux
    skim
    jq
    nfs-utils
    inetutils
    bottom
    firebase-tools
    syncthing
    xorg.xmodmap
    ripgrep
    socat
    playerctl
    ddccontrol
    exiftool
    trash-cli

    # make dev cateogry
    nixd
    nil
    alejandra

    gcc
  ];
}
