{
  services.polybar = {
    enable = false;
    script = "polybar bar &";

    config = {
      colors = {
        background = "#cc000000";
        primary = "#aad7e1";
        alert = "#A54242";
        disabled = "#707880";
      };

      "bar/bar" = {
        width = "100%";
        height = "14pt";
        line-size = "1pt";
        module-margin = 1;
        font-0 = "Noto Sans:size=11";
        font-1 = "Font Awesome 6 Free Solid:size=10;0";
        modules-left = "xworkspaces xwindow";
        modules-right = "networkup networkdown pulseaudio dsaudio mic memory cpu date";
        cursor-click = "pointer";
        tray-position = "right";
        wm-restack = "bspwm";
        override-redirect = false;
        enable-ipc = true;
        background = ''''${colors.background}'';
      };

      "module/xworkspaces" = {
        type = "internal/xworkspaces";
        label-active = "%name%";
        label-active-underline = ''''${colors.primary}'';
        label-active-padding = 1;
        label-occupied = "%name%";
        label-occupied-padding = 1;
        label-urgent = "%name%";
        label-urgent-background = ''''${colors.alert}'';
        label-urgent-padding = 1;
        label-empty-padding = 1;
        pin-workspaces = true;
      };

      "module/xwindow" = {
        type = "internal/xwindow";
        label = "%title:0:30:...%";
      };

      "module/dsaudio" = {
        type = "custom/ipc";
        hook-0 = "DS --ds-i";
        hook-1 = ''echo "%{F#7eb8cc}"'';
        hook-2 = ''echo "%{F#7eb8cc}"'';
        initial = 1;
        click-left = "DS --ds";
      };

      "module/mic" = {
        type = "custom/ipc";
        hook-0 = "mic-mute --mic-i";
        hook-1 = ''echo "%{F#A54242}%{F-}"'';
        hook-2 = ''echo "%{F#7eb8cc}%{F-}"'';
        initial = 1;
        click-left = "mic-mute --mute";
      };

      "module/pulseaudio" = {
        type = "internal/pulseaudio";
        label-muted = " muted";
        label-muted-foreground = ''''${colors.disabled}'';
        label-volume = "%percentage%";
        click-right = "pavucontrol";
        format-volume = "<ramp-volume> <label-volume>";
        ramp-volume-0 = "";
        ramp-volume-1 = "";
        ramp-volume-2 = "";
        ramp-volume-foreground = ''''${colors.primary}'';
      };

      "module/networkup" = {
        type = "internal/network";
        interface = ''''${system.sys_network_interface}'';
        interface-type = "wired";
        interval = 1;
        format-connected-prefix = " ";
        format-connected-prefix-foreground = ''''${colors.primary}'';
        label-connected = "%upspeed%";
        format-connected-suffix = " ";
        format-connected-suffix-foreground = ''''${colors.primary}'';
        format-connected-offset = 5;
      };

      "module/networkdown" = {
        type = "internal/network";
        interface = ''''${system.sys_network_interface}'';
        interface-type = "wired";
        interval = 1;
        label-connected = "%downspeed% ";
        format-connected-offset = -5;
      };

      "module/memory" = {
        type = "internal/memory";
        interval = 2;
        format-prefix = " ";
        format-prefix-foreground = ''''${colors.primary}'';
        label = "%percentage_used:2%%";
      };

      "module/cpu" = {
        type = "internal/cpu";
        interval = 2;
        format-prefix = " ";
        format-prefix-foreground = ''''${colors.primary}'';
        label = "%percentage:2%%";
      };

      "module/date" = {
        type = "internal/date";
        interval = 1;
        time = "%I:%M";
        date = "%P";
        date-alt = " %A, %d %B %Y";
        label = "%time% %date%";
        format = "<label> ";
        label-foreground = ''''${colors.primary}'';
      };
    };
  };
}
