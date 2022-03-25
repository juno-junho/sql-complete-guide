-- SELECT * FROM sales;

-- 1. Find all sales with volume > 1000
-- SELECT * FROM sales
-- WHERE volume > 1000;

-- 2. Find top 10 sales
-- SELECT * FROM sales
-- ORDER BY volume DESC
-- LIMIT 10;

-- 3. Find bottom 10 sales
-- SELECT * FROM sales
-- ORDER BY volume
-- LIMIT 10;

-- 4. Find all recurring sales
-- SELECT * FROM sales
-- WHERE is_recurring IS TRUE;
-- WHERE is_recurring = 0;
-- WHERE is_recurring <> 0;

-- 5. Find disrupted sales with volume > 5000
-- SELECT * FROM sales
-- WHERE (is_disputed IS TRUE) AND (volume > 5000); 

-- 6. Find all sales created between two dates
-- SELECT * FROM sales
-- WHERE date_created BETWEEN '2021-11-02' AND '2022-04-30';

-- 7. Find all sales fulfilled <= 5 days after creation date
-- SELECT * FROM sales
-- WHERE date_fulfilled - date_created <= 5; 

-- -- When the data type is TIMESTAMP using built-in function
-- SELECT * FROM sales
-- WHERE EXTRACT(DAY FROM date_fulfilled - date_created)  <= 5; 

-- 8. Get a list of distinct customers
-- SELECT DISTINCT customer_name FROM sales
-- ORDER BY customer_name ;

-- 9. Get a list of distinct products
-- SELECT DISTINCT product_name FROM sales
-- ORDER BY product_name ;