-- Active: 1699265707687@@127.0.0.1@3306@ostadmod6
SELECT Customers.name, SUM(Order_Items.quantity * Order_Items.unit_price) AS total_purchase_amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
LEFT JOIN Order_Items ON Orders.order_id = Order_Items.order_id
GROUP BY Customers.name
ORDER BY total_purchase_amount DESC
LIMIT 5;
