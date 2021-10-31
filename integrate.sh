#!/bin/bash

IMGNAME=filezilla.png
DESKTOPFILE=gimp-appimage.desktop

APPPATH=$(kdialog --getopenfilename)

echo "[Desktop Entry]" > $DESKTOPFILE
echo "Version=1.0" >> $DESKTOPFILE
echo "Name=FileZilla Pro" >> $DESKTOPFILE
echo "GenericName=FTP client" >> $DESKTOPFILE
echo "Comment=Download and upload files via FTP, FTPS and SFTP" >> $DESKTOPFILE
echo "Exec=$APPPATH" >> $DESKTOPFILE
echo "Terminal=false" >> $DESKTOPFILE
echo "Icon=filezilla.png" >> $DESKTOPFILE
echo "Type=Application" >> $DESKTOPFILE
echo "Categories=Network;FileTransfer;" >> $DESKTOPFILE
echo "StartupWMClass=Filezilla" >> $DESKTOPFILE

sudo mv $DESKTOPFILE /usr/share/applications
sudo cp $IMGNAME /usr/share/icons
