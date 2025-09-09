#!/bin/bash

## Description: Create data tables.
## Usage: run-sql
## Example: "ddev run-sql"

mysql db < ./database/database.4.1.mysql
mysql db < ./database/data.sql
