#!/bin/bash
if [ -d ~/.electrumx-installer ]; then
    echo "~/.electrumx-installer already exists."
    echo "Either delete the directory or run ~/.electrumx-installer/install.sh directly."
    exit 1
fi
if which git > /dev/null 2>&1; then
    git clone https://github.com/CryptoLover705/MCPC-ElectrumX_Installerr ~/.electrumx-installer
    cd ~/.electrumx-installer/
else
    which wget > /dev/null 2>&1 && which unzip > /dev/null 2>&1 || { echo "Please install git or wget and unzip" && exit 1 ; }
    wget https://github.com/CryptoLover705/MCPC-ElectrumX_Installerr/archive/master.zip -O /tmp/electrumx-master.zip
    unzip /tmp/electrumx-master.zip -d ~/.electrumx-installer
    rm /tmp/electrumx-master.zip
    cd ~/.electrumx-installer/electrumx-installer-master/
fi
if [[ $EUID -ne 0 ]]; then
    which sudo > /dev/null 2>&1 || { echo "You need to run this script as root" && exit 1 ; }
    sudo -H ./install.sh "$@"
else
    ./install.sh "$@"
fi
