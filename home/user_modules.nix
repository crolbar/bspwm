{
  crolbar = [
    ./cli
    ./cli/zzz
    ./gui
    ./dev
    #./wm/bsp
    ./wm/hypr
    ./wm/left
    ./misc
    ../overlays.nix
    ./misc/mangohud.nix
    ./gui/KeyboardVisualizer.nix
  ];

  plier = [
    ./cli
    ./cli/zzz
    ./gui
    ./dev
    ./wm/left
    ./wm/hypr
    ./misc
    ../overlays.nix
  ];

  kubo = [
    ./cli
    ./dev

    ./gui/term_emulators/alacritty.nix
    ./gui/zathura.nix
    ./gui/eww
    ./gui/schizofox.nix

    ./wm/bsp
    ./wm/hypr
    ./misc
  ];

  screw = [
    ./cli
  ];
}
