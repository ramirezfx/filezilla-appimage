#!/bin/bash
DLLINK=$(wget https://filezilla-project.org/download.php?platform=linux64 -q -O - | grep https://dl | cut -d '"' -f 4)
wget -O filezilla-latest.tar.bz2 $DLLINK
bunzip2 filezilla-latest.tar.bz2
tar xf filezilla-latest.tar
mv FileZilla3 FileZilla3.AppDir
mkdir FileZilla3.AppDir/usr
cd FileZilla3.AppDir
mv bin usr
mv lib usr
mv share usr
cd ..
cp FileZilla3.AppDir/usr/share/applications/filezilla.desktop FileZilla3.AppDir
cp FileZilla3.AppDir/usr/share/icons/hicolor/scalable/apps/filezilla.svg FileZilla3.AppDir
chmod 700 AppRun
cp AppRun FileZilla3.AppDir
wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
chmod 700 appimagetool-x86_64.AppImage
./appimagetool-x86_64.AppImage FileZilla3.AppDir
rm appimagetool-x86_64.AppImage
rm -Rf FileZilla3.AppDir
rm filezilla-latest.tar
