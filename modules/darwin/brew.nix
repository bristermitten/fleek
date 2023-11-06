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
      "jetbrains-toolbox"
      "raycast"
      "bigwig-club/brew/upic"
      "steam"
      "obs"
      "flux"
      "clockify"
      "messenger"
      "vlc"
      "whatsapp"
    ];
  };
}
