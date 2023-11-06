{pkgs, ...}: {
  home.packages = with pkgs; [
    haskell.compiler.ghc96
    haskell-language-server
    cabal-install
  ];
}
