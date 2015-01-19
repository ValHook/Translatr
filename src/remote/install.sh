#!/bin/bash

echo "Downloading Translatr ..."
mkdir -p ~/Library/Services/
cd ~/Library/Services/
curl -Os http://translate.valhook.com/release.zip

echo "Installing ..."
unzip -qq -o ./release.zip
mv ./translate /usr/local/bin/
chmod +x /usr/local/bin/translate
rm ./release.zip

echo "Done. Translatr is installed."