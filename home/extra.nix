{ pkgs, config, flake, ... }:
{
  home.packages = with pkgs; [ 
    discord    ];

}
