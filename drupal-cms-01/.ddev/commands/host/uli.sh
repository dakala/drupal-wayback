#!/usr/bin/env sh

## Description: Log in to Drupal as admin.
## Usage: uli
## Example: "ddev uli"

drush_uli=$(ddev drush uli)
ddev launch "$drush_uli"
