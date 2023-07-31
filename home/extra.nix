{ pkgs, config, flake, ... }:
{
  home.packages = with pkgs; [ 
    discord    ];
  programs.discord.enable = true;
}
