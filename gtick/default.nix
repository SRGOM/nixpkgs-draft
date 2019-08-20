with import <nixpkgs> {};

stdenv.mkDerivation rec { version = "0.5.4"; name = "gtick-${version}";

src = fetchurl { url = "https://www.antcom.de/gtick/download/${name}.tar.gz"; sha256 = "0z7sn9nhjvnk2xc8h6qfj8ry7izqq09sf1ldzkxgqbw967i3k520"; };

buildInputs = [ pkgconfig gtk2-x11 libpulseaudio libsndfile ];

configureFlags = [ "--with-sndfile" ];

postInstall = '' for f in $out/share/applications/*.desktop; do sed -i -e "s|/usr/|$out/|g" "$f" done '';

meta = { description = "A metronome"; homepage = https://www.antcom.de/gtick/; license = with stdenv.lib; [ licenses.gpl3 ]; maintainers = [ ]; }; }
