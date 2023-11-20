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

      Host lab
              HostName rd-mvb-linuxlab.bristol.ac.uk
              ProxyJump seis

      Host seis
            HostName seis.bris.ac.uk
            UserName fi22264


    '';
  };
}
