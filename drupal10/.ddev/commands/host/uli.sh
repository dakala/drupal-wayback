#!/bin/bash

## Description: Log in to Drupal as admin.
## Usage: uli
## Example: "ddev uli"

DRUSH_ULI=$(ddev drush uli)
ddev launch "$DRUSH_ULI"
