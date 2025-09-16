#!/bin/bash

## Description: Create data tables.
## Usage: run-sql
## Example: "ddev run-sql"

mysql db < ./database/database.mysql
mysql db < ./database/data.sql
