SELECT *
FROM Cars
ORDER BY DailyPrice DESC;

SELECT *
FROM Customers
WHERE FullName LIKE '%a%';

SELECT *
FROM Rentals
WHERE StartDate >= date('now', '-30 days');

SELECT *
FROM Rentals
WHERE StartDate >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

SELECT *
FROM Rentals
WHERE StartDate >= CURRENT_DATE - INTERVAL '30 days';
