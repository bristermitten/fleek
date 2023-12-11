{...}: {
  homebrew.extraConfig = ''
    brew "yabai", restart_service: "changed"
  '';
}
