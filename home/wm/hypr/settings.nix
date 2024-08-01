{
  wayland.windowManager.hyprland.settings = {
    # monitors
    monitor = "DP-1,1920x1080@144,0x0,1";

    #monitor=DP-1,1920x1080@144,1080x1080,1
    #monitor=DP-2,1920x1080@75,1080x0,1
    #monitor=HDMI-A-1,1920x1080@60,0x70,1,transform,3

    #monitor=HDMI-A-1,1920x1080@60,0x1080,1
    #monitor=DP-1,1920x1080@144,0x0,1

    # startup apps
    exec-once = [
      "playerctld daemon"
      "dunst"
      "~/.config/hypr/scripts/wall i"
      #"/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &"
      #"/nix/store/$(ls -la /nix/store | grep 'polkit-gnome-0.105$' | awk '{print $9}' | head -n 1)/libexec/polkit-gnome-authentication-agent-1 &"
      "nm-applet &"
      "eww -c ~/.config/hypr/eww/ open bar"
      "swww-daemon"
    ];

    # windowrules
    windowrule = [
      "float, feh"
      "float, pavucontrol"
      "float, mousepad"
      "float, steam"
      "move 960 30, pavucontrol"
    ];

    windowrulev2 = [
      "float, title:(enc) "
      "float, title:(crolk) "
      "opacity 0.85 0.85, initialTitle:(Spotify)"
      "opacity 0.9 0.9,class:^(mousepad)$"
      "workspace 4, initialTitle:(Spotify)"
      "workspace 8, initialTitle:(Steam)"
    ];

    # env vars
    env = [
      "XCURSOR_SIZE,20"
      "LIBVA_DRIVER_NAME,nvidia"
      "XDG_SESSION_TYPE,wayland"
      "GBM_BACKEND,nvidia-drm"
      "__GLX_VENDOR_LIBRARY_NAME,nvidia"
    ];

    cursor = {
      no_hardware_cursors = true;
    };

    input = {
      sensitivity = -0.9;
      kb_options = "grp:win_space_toggle";
      kb_layout = "us,us,bg";
      kb_variant = ",dvorak,phonetic";
    };

    misc = {
      disable_hyprland_logo = true;
      background_color = "0x000000";
      mouse_move_enables_dpms = true;
    };

    # variables
    general = {
      gaps_in = 2;
      gaps_out = 2;
      border_size = 1;
      layout = "dwindle";
      "col.active_border" = "rgba(EFBBFFee) rgba(BAE1FFee) -30deg";
      "col.inactive_border" = "rgb(000000)";
    };

    decoration = {
      rounding = 4;
      drop_shadow = false;
      blur.enabled = false;
    };

    animations = {
      enabled = true;

      bezier = [
        "cubic, 0, 1, 0.1, 1"
        "workspace, 0.3, 1, 0.3, 1"
      ];
      animation = [
        "windows, 1, 3, cubic"
        "windowsIn, 1, 3, cubic, slide"
        "windowsOut, 1, 3, cubic, slide"
        "windowsMove, 1, 3, cubic, slide"
        "border, 1, 10, default"
        "fade, 1, 3, workspace"
        "workspaces, 1, 3, workspace"
      ];
    };

    dwindle = {
      pseudotile = true;
      preserve_split = true;
      no_gaps_when_only = true;
    };
  };
}
