{...}: {
  homebrew = {
    enable = true;
    global = {
      brewfile = true;
    };
    brews = [
      "llvm@15"
      "graphviz"
      "ffmpeg"
    ];

    taps = [
      "homebrew/bundle"
      "homebrew/cask-fonts"
      "homebrew/cask-versions"
      "homebrew/services"
    ];
    casks = [
      "alt-tab"
      "bartender"
      "google-chrome"
      "jetbrains-toolbox"
      "raycast"
      "steam"
      "obs"
      "flux"
      "clockify"
      "messenger"
      "vlc"
      "whatsapp"
      "plex"
    ];
  };
}
