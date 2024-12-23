#!/bin/bash

# Variables for database connection
DB_HOST="localhost"
DB_USER="your_username"
DB_PASS="your_password"
DB_NAME="booking_hotels"

# Path to the SQL script file
SQL_FILE="init.sql"

# Check if the SQL file exists
if [ ! -f "$SQL_FILE" ]; then
  echo "Error: SQL file '$SQL_FILE' not found!"
  exit 1
fi

# Execute the SQL script
echo "Initializing the database..."
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < "$SQL_FILE"

if [ $? -eq 0 ]; then
  echo "Database initialized successfully."
else
  echo "Error: Failed to initialize the database."
fi
