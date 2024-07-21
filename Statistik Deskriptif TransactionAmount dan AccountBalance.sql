SELECT
    AVG(TransactionAmount) AS AvgTransactionAmount,
    STDDEV(TransactionAmount) AS StdDevTransactionAmount,
    MIN(TransactionAmount) AS MinTransactionAmount,
    MAX(TransactionAmount) AS MaxTransactionAmount,
    AVG(AccountBalance) AS AvgAccountBalance,
    STDDEV(AccountBalance) AS StdDevAccountBalance,
    MIN(AccountBalance) AS MinAccountBalance,
    MAX(AccountBalance) AS MaxAccountBalance
FROM transactions;
