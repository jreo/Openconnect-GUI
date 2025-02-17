#!/bin/bash -e

sudo apt-get update
sudo apt-get install -y \
	build-essential \
	qtbase5-dev \
	libqt5websockets5-dev \
	qtwebengine5-dev \
	cmake \
	debhelper

mkdir -p build

cp ./artifacts/*.tar.gz build/ && cd build
tar -xzf *.tar.gz && cd globalprotect-openconnect-*/

dpkg-buildpackage -us -uc
