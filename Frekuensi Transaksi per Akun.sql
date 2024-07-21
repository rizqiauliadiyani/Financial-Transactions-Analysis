SELECT AccountID, COUNT(*) AS TransactionCount
FROM transactions
GROUP BY AccountID
ORDER BY TransactionCount DESC;
