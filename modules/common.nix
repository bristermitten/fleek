{
  self,
  inputs,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./primaryUser.nix
    ./nixpkgs.nix
  ];

  nixpkgs.overlays =
    builtins.attrValues self.overlays
    ++ (let
      fixCyclicReference = drv:
        pkgs.haskell.lib.overrideCabal drv (_: {
          enableSeparateBinOutput = false;
        });
      myOverlay = self: super: {
        discord-ptb = super.discord-ptb.override {withOpenASAR = true;};
        haskell-language-server =
          super
          .haskellPackages
          .haskell-language-server
          .overrideScope (lself: lsuper: {
            supportedGhcVersions = ["96"];
            ormolu = fixCyclicReference super.haskellPackages.ormolu;
          });
      };
    in [myOverlay]);

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableBashCompletion = true;
  };

  user = {
    description = "Alexander Wood";
    home = "${
      if pkgs.stdenvNoCC.isDarwin
      then "/Users"
      else "/home"
    }/${config.user.name}";
    shell = pkgs.zsh;
  };

  # bootstrap home manager using system config
  hm = {
    imports = [
      ./home-manager
    ];
  };

  # let nix manage home-manager profiles and use global nixpkgs
  home-manager = {
    extraSpecialArgs = {inherit self inputs;};
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
  };

  # environment setup
  environment = {
    systemPackages = with pkgs; [
      # editors
      neovim

      # standard toolset
      coreutils-full
      findutils
      diffutils
      curl
      wget
      git
      jq

      # helpful shell stuff
      bat
      fzf
      ripgrep

      # languages
      python3
      ruby
      go
    ];
    etc = {
      home-manager.source = "${inputs.home-manager}";
      nixpkgs.source = "${inputs.nixpkgs}";
      stable.source = "${inputs.stable}";
    };
    # list of acceptable shells in /etc/shells
    shells = with pkgs; [bash zsh fish];
  };

  fonts = {
    fontDir.enable = true;
    fonts = with pkgs; [jetbrains-mono];
  };
}
