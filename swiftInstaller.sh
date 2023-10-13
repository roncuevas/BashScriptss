#!/bin/bash

version="5.8.1"
folder="swift-5.8.1-RELEASE-ubuntu22.04"

echo "Ejecutando apt-get update..."
sudo apt-get update

echo "Ejecutando apt-get upgrade..."
sudo apt-get upgrade

clear
echo "¡Hecho!"

echo "Instalando dependencias..."
sudo apt-get install clang libicu-dev

echo "Descargando Swift"
wget https://download.swift.org/swift-$version-release/ubuntu2204/swift-5.8.1-RELEASE/$folder.tar.gz

echo "Moviendo carpetas"
tar -xf $folder.tar.gz
sudo mkdir /swift
sudo mv $folder /swift/$version

echo "Borrando versiones previas"
sudo rm -r /usr/bin/swift

echo "Agregando al PATH"
sudo ln -s /swift/$version/usr/bin/swift /usr/bin/swift

echo "Borrando remanentes"
sudo rm -r $folder.tar.gz
