{ config, pkgs, misc, ... }@inputs:
let
  cachedNixShell = pkgs.fetchFromGitHub {
    owner = "xzfc";
    repo = "cached-nix-shell";
    rev = "59b11bf82c409529410f066d6c2159fac9aa9aa7";
    sha256 = "sha256-sHsUsqGeAZW1OMbeqQdLqb7LgEvhzWM7jq17EU16K0A";
  };

  frameworks = pkgs.darwin.apple_sdk.frameworks;
in
{
  nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages

      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);

    };
    #overlays = [myOverlay];
  };


  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
home.packages = (with pkgs; [
    cachedNixShell
    discord
    rustup
    pkgs.cachix
    pkgs.zsh-autosuggestions
    pkgs.R
    pkgs.gnupg
    pkgs.nixpacks
    pkgs.cairo
    pkgs.nodePackages_latest.node-gyp
    pkgs.pinentry_mac
    pkgs.inetutils
    pkgs.nil
    pkgs.emacs
    pkgs.nixpkgs-fmt
    pkgs.kotlin-language-server
    pkgs.pkg-config
    pkgs.pixman
    pkgs.python39
    pkgs.spotify
    # Fleek Bling
    pkgs.git
    pkgs.htop
    pkgs.github-cli
    pkgs.glab
    pkgs.fzf
    pkgs.ripgrep
    pkgs.vscode
    pkgs.jq
    pkgs.yq
    pkgs.neofetch
    pkgs.btop
    pkgs.cheat
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ]);
  fonts.fontconfig.enable = true;
  home.stateVersion = "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}
