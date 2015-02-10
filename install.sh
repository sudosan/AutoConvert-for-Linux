#!/bin/sh

#tana3n is gay
#kzk is gay
#INKJN is gay

echo "これからAutoConvertの実行に必要なソフトのインストールを行います"
sudo su

#HandBrake

add-apt-repository ppa:stebbins/handbrake-releases
apt-get update
apt-get install handbrake-cli

#Comskip

git clone https://github.com/Hiroyuki-Nagata/comskip.git
cd comskip
git submodule init
git submodule update
./bootstrap
cd ffmpeg
./configure --enable-gpl --enable-version3 --disable-stripping --enable-libx264 --enable-shared
make && make install
cd ../
./configure
make && make install
cp misc/comskip_wrapper.sh ../encode/
chmod +x ../encode/comskip_wrapper.sh
