{pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation {
  name = "qtype";

  buildInputs = [
    qt5.qtbase
    (python3.withPackages(ps: with ps; [elpy yapf pip jedi requests pygments pyqt5]))
      ];
}
