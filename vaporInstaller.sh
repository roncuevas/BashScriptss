#!/bin/bash

echo "Instalando dependencias"
sudo apt-get install binutils git gnupg2 libc6-dev libcurl4-openssl-dev 
     \ libedit2 libgcc-9-dev libpython3.8 libsqlite3-0 libstdc++-9-dev 
     \ libxml2-dev libz3-dev pkg-config tzdata unzip zlib1g-dev

echo "Clonando Vapor"
git clone https://github.com/vapor/toolbox.git

