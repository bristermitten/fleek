{ config, pkgs, misc, ... }: {
  nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
      
    };
  };

  
  # managed by fleek, modify ~/.fleek.yml to change installed packages
  
  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  home.packages = [
    # user selected packages
    pkgs.rustup
    pkgs.haskell-language-server
    pkgs.zsh-autosuggestions
    pkgs.R
    pkgs.gnupg
    pkgs.nixpacks
    pkgs.yarn
    pkgs.nodejs
    pkgs.cairo
    pkgs.kotlin
    pkgs.maven
    pkgs.nodePackages_latest.node-gyp
    pkgs.pinentry_mac
    pkgs.inetutils
    pkgs.nil
    pkgs.emacs
    pkgs.nixpkgs-fmt
    pkgs.ghc
    pkgs.cabal-install
    pkgs.kotlin-language-server
    pkgs.pkg-config
    pkgs.pixman
    pkgs.python39
    # Fleek Bling
    pkgs.git
    pkgs.htop
    pkgs.github-cli
    pkgs.glab
    pkgs.fzf
    pkgs.ripgrep
    pkgs.vscode
    pkgs.lazygit
    pkgs.jq
    pkgs.yq
    pkgs.neovim
    pkgs.neofetch
    pkgs.btop
    pkgs.cheat
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}
