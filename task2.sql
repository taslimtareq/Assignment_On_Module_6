-- Active: 1699265707687@@127.0.0.1@3306@ostadmod6
SELECT Products.name AS product_name, Order_Items.quantity, (Order_Items.quantity * Order_Items.unit_price) AS total_amount
FROM Order_Items
INNER JOIN Products ON Order_Items.product_id = Products.product_id
ORDER BY Order_Items.order_id ASC;