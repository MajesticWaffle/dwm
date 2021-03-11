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

echo "Done."
