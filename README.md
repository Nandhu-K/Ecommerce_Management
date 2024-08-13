1.SELECT 
    products.id AS product_id,
    products.name AS product_name,
    categories.name AS category_name
FROM products
JOIN product_categories ON products.id = product_categories.product_id
JOIN categories ON product_categories.category_id = categories.id;
![image](https://github.com/user-attachments/assets/4cb16766-c375-4f69-b3ff-48eb39135b6f)

2.SELECT 
    products.name AS product_name,
    SUM(order_items.quantity * products.price) AS total_sales
FROM order_items
JOIN products ON order_items.product_id = products.id
GROUP BY products.name;
![image](https://github.com/user-attachments/assets/d4591b7d-f579-4028-b349-664267226eb9)


