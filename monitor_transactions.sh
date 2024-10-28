echo "Suspicious Transactions (Withdrawals of ₹50,000 or more):"
grep -E "Withdraw: (50000|[5-9][0-9]{4}|[1-9][0-9]{5,})" transaction_log.txt || echo "No suspicious transactions found."
