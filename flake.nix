{
  description = "Fleek Configuration";


  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    prismlauncher.url = "github:PrismLauncher/PrismLauncher";
  };

  outputs = { nixpkgs, home-manager, prismlauncher, ... }@inputs: {
    defaultPackage.aarch64-darwin = home-manager.defaultPackage.aarch64-darwin;

    formatter.aarch64-darwin = nixpkgs.legacyPackages.aarch64-darwin.nixpkgs-fmt;

    config.nixpkgs.overlays = [ inputs.prismlauncher.overlay ];

    # Available through 'home-manager --flake .#your-username@your-hostname'
    homeConfigurations = {

      alex = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.aarch64-darwin; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = { inherit inputs; }; # Pass flake inputs to our config
        modules = [
          ./home.nix         
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./Alexs-MacBook-Pro-2.local/Alexs-MacBook-Pro-2.local.nix
          ./Alexs-MacBook-Pro-2.local/user.nix
        ];
      };

    };
  };
}
