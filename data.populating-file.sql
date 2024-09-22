-- Using the chicken_fitii database
USE chicken_fitii;

-- =======================================================
-- USERS TABLE
-- Inserting data into the users table. The user_type column 
-- distinguishes between sellers and buyers.
-- =======================================================
INSERT IGNORE INTO users (user_id, user_name, user_email, user_type) VALUES
(1, 'mickey', 'mickey_01@gmail.com', 'seller'),  -- Mickey is a seller
(2, 'alex', 'alex@gmail.com', 'seller'),        -- Alex is a seller
(3, 'rose', 'rose@gmail.com', 'buyer'),         -- Rose is a buyer
(4, 'christine', 'christin@yahoo.com', 'seller'),-- Christine is a seller
(5, 'edward', 'edward@hotmail.xyz', 'buyer'),   -- Edward is a buyer
(6, 'katana', 'katana_069@gmail.com', 'seller'),-- Katana is a seller
(7, 'david', 'david@ymail.com', 'buyer'),       -- David is a buyer
(8, 'james', 'james_342@gmail.com', 'buyer'),   -- James is a buyer
(9, 'amelia', 'amelia_784@hotmail.com', 'seller'), -- Amelia is a seller
(10, 'liam', 'liam_157@yahoo.com', 'buyer'),    -- Liam is a buyer
(11, 'sophia', 'sophia_318@gmail.com', 'seller'), -- Sophia is a seller
(12, 'noah', 'noah_652@gmail.com', 'buyer'),    -- Noah is a buyer
(13, 'olivia', 'olivia_899@hotmail.com', 'seller'), -- Olivia is a seller
(14, 'ethan', 'ethan_764@ymail.com', 'buyer'),  -- Ethan is a buyer
(15, 'emma', 'emma_211@hotmail.com', 'seller'), -- Emma is a seller
(16, 'mason', 'mason_620@gmail.com', 'buyer'),  -- Mason is a buyer
(17, 'ava', 'ava_579@yahoo.com', 'seller'),     -- Ava is a seller
(18, 'logan', 'logan_498@hotmail.com', 'buyer'),-- Logan is a buyer
(19, 'isabella', 'isabella_803@ymail.com', 'seller'), -- Isabella is a seller
(20, 'lucas', 'lucas_273@gmail.com', 'buyer');  -- Lucas is a buyer

-- =======================================================
-- PRODUCTS TABLE
-- Inserting data into the products table. Each seller has one product.
-- The seller_id references the user_id of the seller from the users table.
-- =======================================================
INSERT IGNORE INTO products (product_id, product_name, price, seller_id) VALUES
	(1, 'Broiler Chicken', 500, 1),  -- Mickey's product
	(2, 'Layer Chicken', 400, 2),    -- Alex's product
	(3, 'Free-range Chicken', 700, 4), -- Christine's product
	(4, 'Organic Chicken', 600, 6),  -- Katana's product
	(5, 'Heritage Chicken', 650, 9), -- Amelia's product
	(6, 'Cornish Hen', 550, 11),     -- Sophia's product
	(7, 'Silkie Chicken', 800, 13),  -- Olivia's product
	(8, 'Red Ranger Chicken', 750, 15), -- Emma's product
	(9, 'Plymouth Rock Chicken', 500, 17), -- Ava's product
	(10, 'Rhode Island Red', 550, 19);  -- Isabella's product

-- =======================================================
-- ORDERS TABLE
-- Inserting data into the orders table. Each buyer places an order 
-- for a product from a seller. The order includes a timestamp.
-- =======================================================
INSERT IGNORE INTO orders (order_id, product_id, buyer_id, quantity, order_date_time) VALUES
    (1, 1, 3, 2, '2024-09-21 10:30:00'),  -- Rose buys 2 units of Broiler Chicken from Mickey
    (2, 2, 5, 1, '2024-09-21 11:15:00'),  -- Edward buys 1 unit of Layer Chicken from Alex
    (3, 4, 7, 3, '2024-09-21 12:00:00'),  -- David buys 3 units of Organic Chicken from Katana
    (4, 5, 8, 1, '2024-09-21 13:45:00'),  -- James buys 1 unit of Heritage Chicken from Amelia
    (5, 6, 10, 2, '2024-09-21 14:30:00'), -- Liam buys 2 units of Cornish Hen from Sophia
    (6, 7, 12, 1, '2024-09-21 15:00:00'), -- Noah buys 1 unit of Silkie Chicken from Olivia
    (7, 8, 14, 4, '2024-09-21 15:30:00'), -- Ethan buys 4 units of Red Ranger Chicken from Emma
    (8, 9, 16, 2, '2024-09-21 16:00:00'), -- Mason buys 2 units of Plymouth Rock Chicken from Ava
    (9, 10, 18, 3, '2024-09-21 16:45:00'), -- Logan buys 3 units of Rhode Island Red from Isabella
    (10, 1, 20, 1, '2024-09-21 17:15:00'); -- Lucas buys 1 unit of Broiler Chicken from Mickey

-- =======================================================
-- INVENTORY TABLE
-- Inserting available quantities of products into the inventory table. 
-- The quantity_available refers to the current stock of each product.
-- =======================================================
INSERT IGNORE INTO inventory (product_id, quantity_available) VALUES
    (1, 50),  -- 50 units of Broiler Chicken from Mickey
    (2, 30),  -- 30 units of Layer Chicken from Alex
    (3, 40),  -- 40 units of Free-range Chicken from Christine
    (4, 25),  -- 25 units of Organic Chicken from Katana
    (5, 20),  -- 20 units of Heritage Chicken from Amelia
    (6, 15),  -- 15 units of Cornish Hen from Sophia
    (7, 35),  -- 35 units of Silkie Chicken from Olivia
    (8, 10),  -- 10 units of Red Ranger Chicken from Emma
    (9, 22),  -- 22 units of Plymouth Rock Chicken from Ava
    (10, 18); -- 18 units of Rhode Island Red from Isabella
