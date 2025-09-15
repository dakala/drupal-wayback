#!/bin/bash

## Description: Build the local development environment
## Usage: build
## Example: "ddev build"

ddev start
ddev auth ssh
ddev drush-install
ddev site-install
