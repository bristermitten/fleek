{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./bat.nix
    ./discord.nix
    ./direnv.nix
    ./dotfiles
    ./fzf.nix
    ./git.nix
    ./kitty.nix
    ./nushell.nix
    ./nvim
    ./shell.nix
    ./ssh.nix
    ./haskell.nix
    ./gradle.nix
    ./tldr.nix
    ./tmux.nix
    ./vscode.nix
  ];

  nixpkgs.config = {
    allowUnfree = true;
  };

  home = let
    NODE_GLOBAL = "${config.home.homeDirectory}/.node-packages";
  in {
    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "22.05";
    sessionVariables = {
      GPG_TTY = "/dev/ttys000";
      EDITOR = "nvim";
      VISUAL = "nvim";
      CLICOLOR = 1;
      LSCOLORS = "ExFxBxDxCxegedabagacad";
      KAGGLE_CONFIG_DIR = "${config.xdg.configHome}/kaggle";
      NODE_PATH = "${NODE_GLOBAL}/lib";
    };
    sessionPath = [
      "${config.home.homeDirectory}/.rd/bin"
      "${config.home.homeDirectory}/.local/bin"
    ];

    # define package definitions for current user environment
    packages = with pkgs; [
      alejandra
      bitwarden-cli
      cachix
      discord
      element-desktop
      gnupg
      neofetch
      nixfmt
      openjdk
      nixpkgs-fmt
      pre-commit
      shellcheck
      spotify
      sysdo
      tree
      treefmt
    ];
  };

  programs = {
    home-manager = {
      enable = true;
    };
    dircolors.enable = true;
    gpg.enable = true;
    htop.enable = true;
    jq.enable = true;
    lazygit.enable = true;
    less.enable = true;
    man.enable = true;
    nix-index.enable = true;
    starship.enable = true;
    zathura.enable = true;
    zoxide.enable = true;
  };
}
