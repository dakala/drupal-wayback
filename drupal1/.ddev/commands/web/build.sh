#!/bin/bash

## Description: Build the local development environment
## Usage: build
## Example: "ddev build"

mysql db < ./database/database.mysql
mysql db < ./database/data.sql
