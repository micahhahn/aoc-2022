let
  sources = import ./nix/sources.nix;
  nixpkgs = import sources.nixpkgs { };
in with nixpkgs; 

pkgs.mkShell { 
  buildInputs = [ 
    haskellPackages.ghcid
    haskellPackages.ghc
    haskellPackages.cabal-install
    cabal2nix
    haskellPackages.hpack
    hlint
    ormolu
    haskellPackages.haskell-language-server
  ];
}