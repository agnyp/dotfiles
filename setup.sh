#!/bin/bash

PEARL_CONFIG=~/.config/pearl/pearl.conf
PEARL_CONFIG_DIR=~/.config/pearl

echos(){
  echo
  echo [linux-setup] $1
  echo
}

# Pearl installation routine
echos "Installing pearl..."
wget -O install-pearl.sh https://raw.githubusercontent.com/pearl-core/installer/master/install.sh
bash install-pearl.sh
echos "Removing installation script..."
rm install-pearl.sh

# Link pearl.conf
echos "linking pearl.conf..."
mv $PEARL_CONFIG $PEARL_CONFIG.bk
ln -s `pwd`/pearl.conf $PEARL_CONFIG_DIR
