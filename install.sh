#!bin/bash

#Copy config.def.h --> config.h
echo "Copying config file."
sudo cp config.def.h config.h

#install dwm
echo "Installing dwm"
sudo make clean install

#Copy extras to user directory
echo "Installing scripts."

cp .xinitrc ~/.xinitrc
cp .bashrc ~/.bashrc

#install dwmblocks
echo "Installing dwmblocks"
cd dwmblocks
sudo make clean install

cd ..

#install dmenu
echo "Installing dmenu"
cd dmenu
sudo cp config.def.h config.h
sudo make clean install

cd ..

#install st
echo "Installing st"
cd st
sudo cp config.def.h config.h
sudo make clean install

echo "Done."
