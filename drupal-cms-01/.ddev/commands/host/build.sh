#!/usr/bin/env sh

## Description: [CUSTOM] Install Drupal CMS 1 and create demo content.
## Usage: build
## Example: "ddev build"

set -eu

ddev start
ddev auth ssh
ddev composer install --no-interaction

# Drupal CMS 1 ships recipes as Composer packages that must be unpacked before
# its installer profile can apply the selected site template.
ddev composer drupal:recipe-unpack

ddev drush site:install drupal_cms_installer --yes \
  --db-url=mysql://db:db@db/db \
  --site-name="Drupal CMS 1" \
  --account-name=admin \
  --account-pass="Passw0rd" \
  --account-mail=admin@example.com

ddev drush php-script data --script-path=/var/www/html/database/
