{pkgs, ...}: {
  home.packages = with pkgs; [
    haskell.compiler.ghc94
    hls
    cabal-install
    haskellPackages.fourmolu
  ];
}
