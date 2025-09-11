#!/bin/bash

## #ddev-generated
## Description: (Re)install Drupal.
## Usage: site-install
## Example: ddev site-install

# Install Drupal.
drush site-install  --yes \
  --db-url=mysql://db:db@db/db \
  --site-name="Drupal 7" \
  --account-name=admin \
  --account-pass="Passw0rd" \
  --account-mail=admin@example.com

# Enable clean URL.
drush variable:set clean_url 1
# Disable admin overlay module.
drush pm:disable overlay --yes

# Create data.
drush php-script data --script-path=/var/www/html/database/
