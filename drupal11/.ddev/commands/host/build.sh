#!/usr/bin/env sh

## Description: [CUSTOM] Install Drupal and set up the ilms.
## Usage: build
## Example: "ddev build"

ddev start
ddev auth ssh
ddev composer install

# Install Drupal.
ddev drush site:install standard --yes \
  --db-url=mysql://db:db@db/db \
  --site-name="Drupal 11" \
  --account-name=admin \
  --account-pass="Passw0rd" \
  --account-mail=admin@example.com

# Create demo content.
ddev drush php-script data --script-path=/var/www/html/database/
