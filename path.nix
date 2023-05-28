{ pkgs, misc, ... }: {
  home.sessionPath = [
    "$HOME/bin"
    "$HOME/.local/bin"
    "/opt/homebrew/bin"
  ];
}
