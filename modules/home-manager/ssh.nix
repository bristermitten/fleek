{...}: {
  programs.ssh = {
    enable = true;
    includes = ["config.d/*"];
    forwardAgent = true;
    extraConfig = ''
          AddKeysToAgent yes
          UseKeychain yes

      Host github-uni
              HostName github.com
              IdentityFile ~/.ssh/id_ed25519_uni
    '';
  };
}
