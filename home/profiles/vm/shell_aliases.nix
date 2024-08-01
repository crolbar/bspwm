{
  programs.zsh.shellAliases = {
    ls = "lsd -a --group-directories-first";
    ll = "lsd -la --group-directories-first";

    cdd = "cd ..";
    vim = "nvim";
    vimc = "cd ~/.config/nvim && nvim .";

    ns = "nix-shell";

    mnas = "sudo mount -t nfs 192.168.1.11:/nas /mnt/nas -o rw -o async";
    umnas = "sudo umount /mnt/nas";
    nas = "cd /mnt/nas";

    t = "tmux";

    n = "cd ~/Github/dots && vim .";

    reb = "sudo nixos-rebuild switch --flake ~/Github/dots#vm";
    hreb = "home-manager switch --flake ~/Github/dots#vm";
  };
}
