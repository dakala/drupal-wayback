#!/bin/bash

## Description: Build the local development environment
## Usage: build
## Example: "ddev build"

ddev start
ddev mysql -e "DROP DATABASE IF EXISTS db; CREATE DATABASE db;"
ddev run-sql
