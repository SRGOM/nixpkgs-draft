source "$stdenv"/setup

fontdir=$out/share/fonts
shdir=$out/share/
fontfile=$(basename $src)

mkdir -p $fontdir
cp $src $fontdir
cd $fontdir

tar xvf $fontfile
mv indic/OpenType .
mv OpenType/doc $shdir

rm $fontfile
