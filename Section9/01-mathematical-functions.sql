-- SELECT price * billing_frequency AS annual_revenue
-- FROM memberships;

-- refer to the consumption column 
-- SELECT consumption
-- FROM memberships;

-- CEIL()
-- FLOOR()
-- ROUND()
-- TRUNC() TRUNCATE() Mysql
SELECT TRUNCATE(consumption,1)
FROM memberships;
