-- Active: 1699265707687@@127.0.0.1@3306@ostadmod6
SELECT Customers.customer_id, Customers.name, Customers.email, Customers.location, 
       COUNT(Orders.order_id) AS total_orders
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
GROUP BY Customers.customer_id
ORDER BY total_orders DESC;