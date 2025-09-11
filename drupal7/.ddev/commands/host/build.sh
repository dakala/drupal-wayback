#!/bin/bash

## Description: Build the local development environment
## Usage: build
## Example: "ddev build"

ddev start
ddev auth ssh
ddev install-drush
ddev site-install
