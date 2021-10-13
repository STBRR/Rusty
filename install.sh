#!/bin/bash
clear
echo 'Installing Oxide'
wget https://umod.org/games/rust/download/develop -o oxide.zip 2>/dev/null
unzip -o oxide.zip 2>/dev/null
rm oxide.zip
echo 'Install Complete.'
sleep 2

echo 'Launching server.'
chmod +x launch.sh && ./launch.sh

