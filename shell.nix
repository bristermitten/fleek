{ pkgs, misc, ... }: {
  programs.exa.enableAliases = true;

  programs.exa.extraOptions = [
    "--group-directories-first"
    "--header"
  ];

  programs.bat.config = {
    theme = "TwoDark";
  };

  programs.bash = {
    enable = true;
  };
 
  # zsh
  programs.zsh = {

    profileExtra = ''
      [ -r ~/.nix-profile/etc/profile.d/nix.sh ] && source  ~/.nix-profile/etc/profile.d/nix.sh

      bindkey -e # explicitly disable vi emulation as $EDITOR might turn it on
      '';

    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    autocd = true;


    initExtra = ''
      export XDG_RUNTIME_DIR="$TMPDIR"
    '';

    plugins = [
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.5.0";
          sha256 = "0za4aiwwrlawnia4f29msk822rj9bgcygw6a8a6iikiwzjjz0g91";
        };
      }
    ];
  };
}
