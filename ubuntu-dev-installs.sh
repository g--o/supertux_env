#!/bin/bash

function print_colored() {
	echo -e "\033[33m $1 \033[0m"
}

print_colored "Installing pre-requisits for ubuntu..."

print_colored "boost install"
sudo apt install libboost-all-dev

print_colored "openGL install"
sudo apt install libglew-dev libsdl2-dev libsdl2-image-dev libglm-dev libfreetype6-dev  # Debian, Ubuntu

print_colored "openAL install"
sudo apt install libopenal-dev

print_colored "ogg vorbis"
sudo apt install libogg-dev libvorbis-dev

print_colored "physfs"
sudo apt install libphysfs-dev

print_colored "cURL"
sudo apt install libcurl4-gnutls-dev 

print_colored "bison"
sudo apt install libbison-dev

print_colored "flex"
sudo apt install flex

print_colored "done."
