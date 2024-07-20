{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [

    dunst eww anyrun swaybg swaylock sxhkd rofi

#               ╔═╗╦  ╦
#               ║  ║  ║
#               ╚═╝╩═╝╩
        vim git zsh lsd fd btop htop
        neofetch neovim brightnessctl
        light pamixer tldr fzf zip 
        alacritty xclip unzip tree
        xorg.xev ncdu tmux skim jq 
        nfs-utils inetutils bottom
        firebase-tools syncthing
        xorg.xmodmap dapu matm tt-rs
        ripgrep socat playerctl
        gitui ddccontrol






#               ╔═╗╦ ╦╦
#               ║ ╦║ ║║
#               ╚═╝╚═╝╩
        floorp brave vscodium file-roller 
        mpv lxappearance pavucontrol
        discord keepassxc gimp feh mate.eom
        flameshot libreoffice zathura qbittorrent xcolor
        gnome-disk-utility polkit_gnome qemu
        arduino-ide obsidian emacs networkmanagerapplet
        vesktop nwg-look mangohud
        pwvucontrol


#             ╔╦╗╔═╗╦  ╦
#              ║║║╣ ╚╗╔╝
#             ═╩╝╚═╝ ╚╝ 
        glib pkg-config openssl 


        lua lua-language-server

        nodejs yarn 

        clang-tools gcc clang

        
        (
            rust-bin.selectLatestNightlyWith (toolchain: toolchain.default.override {
                    extensions = [ "rust-src" ];
            })
        )
        rust-analyzer cargo-make


        nixd


        pyright 
        (python311.withPackages (ppkgs: with ppkgs; [
             requests pip
        ]))


        nodePackages_latest.bash-language-server
        nodePackages_latest.vscode-langservers-extracted










#             ╔╦╗╦╔═╗╔═╗
#             ║║║║╚═╗║  
#             ╩ ╩╩╚═╝╚═╝
        capitaine-cursors
        libsecret
        git-credential-manager
        xclip
        wl-clipboard
        grim slurp
        nur.repos.nltch.spotify-adblock
        nur.repos.nltch.ciscoPacketTracer8
    ];
}
