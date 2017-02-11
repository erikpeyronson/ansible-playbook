#!/bin/bash
EXIT=$(curl -sL http://git.io/vlcND | grep -Po '(?<="browser_download_url": ")(.*-v[\d.]+.zip)' | xargs wget --quiet -O autodl-irssi.zip)
EXIT=$(unzip -o autodl-irssi.zip)
rm autodl-irssi.zip
cp autodl-irssi.pl autorun/
mkdir -p ~/.autodl
touch ~/.autodl/autodl.cfg

if [ $EXIT -eq "0" ]; then
    touch installation-sucessful
fi
