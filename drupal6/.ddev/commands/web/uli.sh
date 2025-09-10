#!/bin/bash

## Description: Log me in as admin
## Usage: uli
## Example: "ddev uli"

DRUSH_ULI=$(drush user-login 1 admin/content)
echo $DRUSH_ULI
