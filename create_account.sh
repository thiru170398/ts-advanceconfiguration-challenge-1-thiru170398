#!/bin/bash

# Input parameters: username and account number
username=$1
account_number=$2

# Default balance for new accounts
default_balance= 1000
# Check if account already exists in accounts.txt
if grep -q "Account:$2" accounts.txt; then 
echo "Account already Exists"
else
# Add the new account to accounts.txt
echo "username: "$1 "|" "Account:" $2 "|" "Balance:" $default_balance >> accounts.txt
fi

# Create the user in the system (if running in a real Linux environment)
#todo

