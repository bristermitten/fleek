{
  description = "Fleek Configuration";


  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    spicetify-nix.url = "github:the-argus/spicetify-nix";
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {
    defaultPackage.aarch64-darwin = home-manager.defaultPackage.aarch64-darwin;

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
