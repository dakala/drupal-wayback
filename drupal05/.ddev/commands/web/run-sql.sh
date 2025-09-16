#!/bin/bash

## Description: Populate database tables.
## Usage: run-sql
## Example: "ddev run-sql"

mysql db < ./database/database.mysql
mysql db < ./database/data.sql
