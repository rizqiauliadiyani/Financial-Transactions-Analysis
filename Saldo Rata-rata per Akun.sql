SELECT AccountID, AVG(AccountBalance) AS AvgAccountBalance
FROM transactions
GROUP BY AccountID
ORDER BY AvgAccountBalance DESC;
