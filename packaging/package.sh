#!/bin/sh

VERSION="1.0-1"
PACKAGE_FILE="OCRmyPDF-$VERSION.deb"
BASE="debian"

mkdir -p "$BASE"/usr/bin
mkdir -p "$BASE"/opt/OCRmyPDF

cp -R ../jhove ../LICENSE.md ../OCRmyPDF.sh ../README.md ../RELEASE_NOTES.md ../src ../tess-cfg "$BASE/opt/OCRmyPDF"
chmod u+x $BASE/opt/OCRmyPDF/*.sh
chmod u+x $BASE/opt/OCRmyPDF/src/*.sh
ln  --symbolic "../../opt/OCRmyPDF/OCRmyPDF.sh" "$BASE/usr/bin/OCRmyPDF.sh"
ln  --symbolic "../../opt/OCRmyPDF/src/ocrPage.sh" "$BASE/usr/bin/ocrPage.sh"
dpkg-deb --build "$BASE" "$PACKAGE_FILE"

echo "1. Install with $ dpkg -i $PACKAGE_FILE"
echo "2. Install missing dependencies with $ apt-get -f install"

rm -R $BASE/usr/bin/*
rm -R $BASE/opt/OCRmyPDF/*

exit 0
