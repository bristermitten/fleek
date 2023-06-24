{ pkgs, misc, ... }: {
  home.sessionPath = [
    "$HOME/bin"
    "$HOME/.local/bin"
    "/opt/homebrew/bin"
    "/usr/local/bin"
    "/opt/homebrew/opt/llvm@15/bin"
  ];
}
