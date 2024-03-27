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
      "watchman"
    ];

    taps = [
      "homebrew/bundle"
      "homebrew/cask-fonts"
      "homebrew/cask-versions"
      "homebrew/services"
    ];
    casks = [
      "alt-tab"
      "altair-graphql-client"
      "bartender"
      "google-chrome"
      "jetbrains-toolbox"
      "raycast"
      "steam"
      "obs"
      "flux"
      "clockify"
      "messenger"
      "magiccap"
      "vlc"
      "whatsapp"
      "plex"
    ];
  };
}
