SELECT
    CASE
        WHEN TransactionAmount < 100 THEN '< 100'
        WHEN TransactionAmount BETWEEN 100 AND 500 THEN '100 - 500'
        WHEN TransactionAmount BETWEEN 501 AND 1000 THEN '501 - 1000'
        WHEN TransactionAmount BETWEEN 1001 AND 5000 THEN '1001 - 5000'
    END AS AmountRange,
    COUNT(*) AS TransactionCount
FROM transactions
GROUP BY AmountRange
ORDER BY TransactionCount DESC;
