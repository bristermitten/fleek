{pkgs, ...}: {
  home.packages = with pkgs; [
    haskell.compiler.ghc96
    #hls
    cabal-install
    haskellPackages.fourmolu
  ];
}
