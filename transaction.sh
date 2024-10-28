if [[ "$transaction_type" != "deposit" && "$transaction_type" != "withdraw" ]] || ! [[ "$amount" =~ ^[0-9]+$ ]]; then
  echo "Error: Invalid input. Usage: ./transaction.sh <account_number> <deposit|withdraw> <amount>"
  exit 1
fi






# #!/bin/bash

# # Input parameters: account number, transaction type, and amount
# account_number=$1
# transaction_type=$2
# amount=$3

# # Get the current timestamp
# timestamp=$(date '+%Y-%m-%d %H:%M:%S')

# # Log the transaction in transaction_log.txt
# echo "$timestamp | Account: $account_number | $transaction_type: $amount" >> transaction_log.txt

# # Check if the transaction is a high-value withdrawal
# if [ "$transaction_type" == "withdraw" ] && [ "$amount" -ge 50000 ]; then
#   echo "ALERT: High-value transaction detected! Withdrawal: ₹$amount"
# fi
