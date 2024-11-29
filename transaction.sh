#!/bin/bash

# Input parameters: account number, transaction type, and amount
account_number=$1
transaction_type=$2
amount=$3

# Get the current timestamp
timestamp=$(date +'%Y-%m-%d %H:%M:%S')

# Log the transaction in transaction_log.txt
echo $timestamp "|" "Account: "$1 "|" $2":" $3 >> transaction_log.txt
if (("$2"=="withdraw" && $3>=50000)); then
echo "ALERT: High-value transaction detected!"
fi

# Check if the transaction is a high-value withdrawal
#todo
