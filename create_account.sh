#!/bin/bash

# Input parameters: username and account number
username=$1
account_number=$2

# Default balance for new accounts
default_balance=1000

# Check if account already exists in accounts.txt
if grep -q "Account: $account_number" accounts.txt; then
  echo "Account with Account number $account_number already exists. No duplicate entry created."
  exit 1
fi

# Add the new account to accounts.txt
echo "Username: $username | Account: $account_number | Balance: $default_balance" >> accounts.txt
echo "Account created for $username with account number $account_number and balance ₹$default_balance."

# Create the user in the system (if running in a real Linux environment)
sudo useradd -m "$username" || echo "User $username already exists or cannot be created."

