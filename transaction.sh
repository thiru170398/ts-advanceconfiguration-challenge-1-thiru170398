#!/bin/bash

# Input parameters: account number, transaction type, and amount
account_number=$1
transaction_type=$2
amount=$3

# Get the current timestamp
timestamp=$(date '+%Y-%m-%d %H:%M:%S')

# Log the transaction in transaction_log.txt
echo "$timestamp | Account: $account_number | $transaction_type: ₹$amount" >> transaction_log.txt

# Check if the transaction is a high-value withdrawal
if [ "$transaction_type" == "Withdraw" ] && [ "$amount" -ge 50000 ]; then
  echo "ALERT: High-value transaction detected! withdrawal: ₹$amount"
fi
