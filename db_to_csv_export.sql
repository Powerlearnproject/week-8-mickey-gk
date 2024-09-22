-- ==============================================
-- export data from the tables to csv files
-- ==============================================
USE chicken_fitii;

-- ---------------------------------------------
-- export users
SELECT * 
INTO OUTFILE 'C:\Users\micke\Desktop\PLP-ACADEMY\PLP-ACADEMY-ASSIGNMENTS-FOLDER\database\week-8-mickey-gk\users_data.csv' 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM users;

-- ---------------------------------------------
-- export products
SELECT * 
INTO OUTFILE 'C:\Users\micke\Desktop\PLP-ACADEMY\PLP-ACADEMY-ASSIGNMENTS-FOLDER\database\week-8-mickey-gk\products_data.csv' 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM products;

-- ---------------------------------------------
-- export orders
SELECT * 
INTO OUTFILE 'C:\Users\micke\Desktop\PLP-ACADEMY\PLP-ACADEMY-ASSIGNMENTS-FOLDER\database\week-8-mickey-gk\orders_data.csv' 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM orders;

-- ---------------------------------------------
-- export inventory
SELECT * 
INTO OUTFILE 'C:\Users\micke\Desktop\PLP-ACADEMY\PLP-ACADEMY-ASSIGNMENTS-FOLDER\database\week-8-mickey-gk\inventory_data.csv' 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM inventory;