{ lib, stdenv, pkgs, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "gamingtool";
  version = "0.0.1";

  src = fetchFromGitHub {
    owner = "FinGu";
    repo = "${pname}";
    rev = "8f4e32227be3d40d6509eedce7f3f77b03e061b8";
    sha256 = "sha256-hc3U3arurLr7yAErq+gdR60bW+EjN7HMFkZqYxgyCqc=";
  };

  nativeBuildInputs = with pkgs; [ meson cmake ninja pkg-config cjson ];

  installPhase = "install -Dm 0755 ./out $out/bin/gamingtool";

  doCheck = false;
}
