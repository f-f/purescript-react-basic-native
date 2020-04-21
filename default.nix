{ pkgs ? import <nixpkgs> {} }:

let
  easy-ps = import (
    pkgs.fetchFromGitHub {
      owner = "justinwoo";
      repo = "easy-purescript-nix";
      rev = "6cb5825";
      sha256 = "1awsywpw92xr4jmkwfj2s89wih74iw4ppaifc97n9li4pyds56h4";
    }
  ) {
    inherit pkgs;
  };

in
pkgs.mkShell {
  buildInputs = [easy-ps.purs easy-ps.spago easy-ps.spago2nix pkgs.cacert];
}