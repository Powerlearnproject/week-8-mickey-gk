-- =========================================
-- 				DATA RETRIEVAL				
-- =========================================
USE chicken_fitii;  -- selecting database

-- check out the table for data on sellers and buyers
-- NUMBER OF SELLERS
SELECT COUNT(*) AS NUMBER_OF_SELLERS FROM users
WHERE user_type = 'seller'; 

-- NUMBER OF BUYERS
SELECT COUNT(*) AS NUMBER_OF_BUYERS FROM users
WHERE user_type = 'buyer'; 

-- ======================================
-- show available products, seller name, quantity and price per product
-- ======================================
SELECT 
    products.product_name,
    products.price,
    users.user_name AS seller_name,
    inventory.quantity_available
FROM 
    products
LEFT JOIN 
    inventory ON products.product_id = inventory.product_id
LEFT JOIN 
    users ON products.seller_id = users.user_id;
    
-- ======================================
-- show buyer name, quantity purchased, remaining inventory after buyer purchase, cost of purchase
-- ======================================
SELECT 
    buyers.user_name AS buyer_name,
    products.product_name,
    inventory.quantity_available as quantity_available_before_purchasing,
    products.price,
    orders.quantity AS quantity_purchased,
    (inventory.quantity_available - orders.quantity) AS quantity_remaining_after_purchasing,
    (orders.quantity * products.price) AS cost_of_purchase
FROM 
    orders
JOIN 
    users AS buyers ON orders.buyer_id = buyers.user_id
JOIN 
    products ON orders.product_id = products.product_id
JOIN 
    inventory ON products.product_id = inventory.product_id;
