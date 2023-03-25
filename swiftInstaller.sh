#!/bin/bash

release="swift-5.7.3-RELEASE-ubuntu22.04.tar.gz"

echo "Ejecutando apt-get update..."
sudo apt-get update

echo "Ejecutando apt-get upgrade..."
sudo apt-get upgrade

clear
echo "¡Hecho!"

echo "Instalando dependencias..."
sudo apt-get install clang libicu-dev

echo "Descargando Swift"
wget https://download.swift.org/swift-5.7.3-release/ubuntu2204/swift-5.7.3-RELEASE/$release

echo "Moviendo carpetas"
tar -xf $release
sudo mkdir /swift
sudo mv swift-5.7.3-RELEASE-ubuntu22.04 /swift/5.7.3

echo "Agregando al PATH"
sudo ln -s /swift/5.7.3/usr/bin/swift /usr/bin/swift

echo "Borrando remanentes"
sudo rm -r $release