with
    import <nixpkgs> {}
;

stdenv.mkDerivation {
    name = "gpick";
    version = "0.2.6-rc1";

    src = fetchFromGitHub {
        owner = "thezbyg";
        repo = "gpick";
        rev = "040ac4130449a3a18575a8a49c6161472c77ce88";
        sha256 = "183rfzsx6z2r13ymakdm2kpykrz799nzk4qgh1yp8libigyx12m3";
    };


    buildInputs =
    [
        pkgs.scons
        pkgs.pkgconfig
        pkgs.tree
        pkgs.ragel
        pkgs.gettext
        pkgs.gnome2.gtk
        # pkgs.gnome3.gtk3
        pkgs.lua5_2
        pkgs.boost
    ];

    builder = ./gpick_builder.sh;
}
