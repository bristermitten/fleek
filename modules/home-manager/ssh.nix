{...}: {
  programs.ssh = {
    enable = true;
    includes = ["config.d/*"];
    forwardAgent = true;
    extraConfig = ''
      AddKeysToAgent yes
      UseKeychain yes
    '';
  };
}
