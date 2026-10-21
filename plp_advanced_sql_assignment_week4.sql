USE sales;

SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

SELECT customerName, country,
       AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;

SELECT productCode, quantityOrdered,
       SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;

SELECT COUNT(*) AS totalPayments FROM payments;
SELECT COUNT(*) AS totalCustomers FROM customers;
SELECT COUNT(*) AS totalOrderDetails FROM orderdetails;