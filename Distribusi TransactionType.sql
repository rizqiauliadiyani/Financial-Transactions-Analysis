SELECT TransactionType, COUNT(*) AS TransactionCount
FROM transactions
GROUP BY TransactionType;