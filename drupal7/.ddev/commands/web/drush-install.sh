#!/bin/bash

## Description: install Drush inside the web container
## Usage: drush-install
## Example: "ddev drush-install"

echo "Installing Drush..."

wget https://github.com/drush-ops/drush/releases/download/8.5.0/drush.phar
chmod +x drush.phar
sudo mv drush.phar /usr/local/bin/drush
# Optional. Enrich the bash startup file with completion and aliases.
drush init -y

drush --version
echo "Drush installed."
