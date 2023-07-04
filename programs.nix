{ pkgs, misc, ... }: {
  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  # add your personalized program configuration in ./user.nix   

  # Bling supplied programs 
  programs.exa.enable = true;
  programs.bat.enable = true;
  programs.atuin.enable = true;
  programs.zoxide.enable = true;
  programs.direnv = {
    enable = true;

    nix-direnv = {
      enable = true;
    };
  };
  programs.starship.enable = true;

  # User specified programs 
  programs.dircolors.enable = true;

  programs.vscode = {
    enable = true;
  };


  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
      nvim-dap
      plenary-nvim
      {
        plugin = haskell-tools-nvim;
        type = "lua";
        config = builtins.readFile(./neovim/haskell.lua); 
      }
      telescope-nvim

      # Tree sitter
      {
        plugin = nvim-treesitter.withAllGrammars;
        type = "lua";
        config = ''
          require('nvim-treesitter.configs').setup{
            highlight = {
              enable = true,
              additional_vim_regex_highlighting = false,
            },
          }
        '';
      }
      onedark-nvim
    ];

    extraConfig = ''
      " Set .kts files as Kotlin
      autocmd BufReadPost *.kts setlocal filetype=kotlin
      autocmd BufReadPost *.kts setlocal filetype=kotlin
    '';

    extraLuaConfig = ''
      -- Enable Colour Scheme
      require('onedark').load()
    '';
  };

}
