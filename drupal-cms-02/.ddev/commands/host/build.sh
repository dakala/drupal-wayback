#!/usr/bin/env sh

## Description: [CUSTOM] Install Drupal CMS 2 and create demo content.
## Usage: build
## Example: "ddev build"

set -eu

ddev start
ddev auth ssh
ddev composer install --no-interaction

# Drupal CMS 2's installer applies its default Starter site template.
ddev drush site:install drupal_cms_installer --yes \
  --db-url=mysql://db:db@db/db \
  --site-name="Drupal CMS 2" \
  --account-name=admin \
  --account-pass="Passw0rd" \
  --account-mail=admin@example.com

ddev drush pm:enable showcase_teasers --yes
ddev drush php-script data --script-path=/var/www/html/database/
