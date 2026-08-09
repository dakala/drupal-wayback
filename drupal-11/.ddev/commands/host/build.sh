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

# Drupal 11.4 moved the Standard configuration and Basic page content type into
# separate recipes, so apply both before creating the demo content.
ddev drush recipe /var/www/html/web/core/recipes/standard --yes
ddev drush recipe /var/www/html/web/core/recipes/page_content_type --yes

# Create demo content.
ddev drush php-script data --script-path=/var/www/html/database/
