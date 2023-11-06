-- Active: 1699265707687@@127.0.0.1@3306@ostadmod6
SELECT Categories.name AS category_name, SUM(Order_Items.quantity * Order_Items.unit_price) AS total_revenue
FROM Categories
LEFT JOIN Products ON Categories.category_id = Products.category_id
LEFT JOIN Order_Items ON Products.product_id = Order_Items.product_id
GROUP BY Categories.name
ORDER BY total_revenue DESC;
