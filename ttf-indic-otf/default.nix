with
    import <nixpkgs> {}
;

stdenv.mkDerivation rec {
    name = "ttf-indic-otf-${version}";
    version = "0.2";

    src = fetchurl{
        url="https://indlinux.org/downloads/files/indic-otf-${version}.tar.gz";
        sha256 = "0wjy44wk6i2p2r906bikpm8i4xmd44mgpk2yg3ggs0d7jvaa0nb4";
    };

    builder = ./ttf-indic-otf_builder.sh;

    buildInputs = [
        pkgs.gzip
    ];


    meta = {
        description = "Free Indic Fonts";
        homepage = https://www.indlinux.org/wiki/index.php/Downloads;
        maintainers = maintainers.srgom;
        # License is GPL as mentioned in the readme.
    };
}
