source "$stdenv"/setup
cp --recursive "$src" ./
chmod --recursive u=rwx ./"$(basename "$src")"
cd ./"$(basename "$src")"

# gtk2
scons install DESTDIR=$out

# gtk3
# export NIX_CFLAGS_COMPILE="$NIX_CFLAGS_COMPILE -isystem /nix/store/gliiw2pyz6i1rg8kxa2qq0sbl3lf5pk7-glib-2.56.0-dev/include/gio-unix-2.0/"
# scons install DESTDIR=$out USE_GTK3=1
