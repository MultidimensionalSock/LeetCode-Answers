SELECT visited_on,
    SUM(Sum(amount)) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS amount,
    ROUND(AVG(Sum(amount*1.00)) OVER (ORDER BY visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW), 2) AS average_amount
FROM customer
group by visited_on
ORDER BY visited_on
OFFSET 6 ROWS;
