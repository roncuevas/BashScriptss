#!/bin/bash

echo "Installing Vapor dependencies..."
sudo apt-get install binutils git gnupg2 libc6-dev libcurl4-openssl-dev libedit2 libgcc-9-dev libpython3.8 libsqlite3-0 libstdc++-9-dev libxml2-dev libz3-dev pkg-config tzdata unzip zlib1g-dev

echo "Cloning Vapor..."
git clone https://github.com/vapor/toolbox.git

echo "Installing Vapor..."
cd toolbox

echo "Building Vapor..."
swift build -c release --disable-sandbox --enable-test-discovery

echo "Moving Vapor to /usr/local/bin"
sudo mv .build/release/vapor /usr/local/bin
