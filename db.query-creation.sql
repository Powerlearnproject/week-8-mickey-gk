-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS chicken_fitii;
USE chicken_fitii;

-- ========================================================
-- USERS TABLE
-- Stores information about the buyers and sellers.
-- user_type distinguishes between buyers and sellers.
-- ========================================================
CREATE TABLE IF NOT EXISTS users (
	user_id INT PRIMARY KEY,                   -- Unique identifier for each user
    user_name VARCHAR(100),                    -- Name of the user
    user_email VARCHAR(100),                   -- Email address of the user
    user_type ENUM ('buyer', 'seller')         -- Defines if the user is a buyer or seller
);

-- ========================================================
-- PRODUCTS TABLE
-- Stores the details of products that sellers have listed.
-- seller_id links the product to the seller in the users table.
-- ========================================================
CREATE TABLE IF NOT EXISTS products (
	product_id INT PRIMARY KEY,                -- Unique identifier for each product
    product_name VARCHAR(50),                  -- Name of the product (e.g., Broiler Chicken)
    price DECIMAL(10, 2),                      -- Price of the product (up to 10 digits with 2 decimal places)
    seller_id INT,                             -- Links to the user_id of the seller in the users table
    FOREIGN KEY (seller_id) REFERENCES users(user_id)  -- Enforces the relationship between products and sellers
);

-- ========================================================
-- ORDERS TABLE
-- Records each transaction made by a buyer for a product.
-- Links to both the products and users (buyer) tables.
-- ========================================================
CREATE TABLE IF NOT EXISTS orders (
	order_id INT PRIMARY KEY,                  -- Unique identifier for each order
    product_id INT,                            -- Links to the product being purchased
    buyer_id INT,                              -- Links to the buyer (user_id from users table)
    quantity INT,                              -- Quantity of the product ordered
    order_date_time DATETIME,                  -- Date and time of the order
    FOREIGN KEY (product_id) REFERENCES products(product_id), -- Enforces the relationship between orders and products
    FOREIGN KEY (buyer_id) REFERENCES users(user_id)          -- Enforces the relationship between orders and buyers
);

-- ========================================================
-- INVENTORY TABLE
-- Tracks the quantity of each product available for sale.
-- Links to the products table.
-- ========================================================
CREATE TABLE IF NOT EXISTS inventory (
    product_id INT PRIMARY KEY,                -- Links to the product_id from products table
    quantity_available INT,                    -- Available stock of the product
    FOREIGN KEY (product_id) REFERENCES products(product_id)  -- Enforces the relationship between inventory and products
);
