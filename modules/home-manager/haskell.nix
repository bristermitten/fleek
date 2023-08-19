{pkgs, ...}: {
  home.packages = with pkgs; [haskell.compiler.ghc96 haskellPackages.haskell-language-server cabal-install];
}
