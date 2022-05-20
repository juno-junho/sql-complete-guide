-- INSERT INTO customers(
--     first_name,
--     last_name,
--     email
-- )
-- VALUES(
--     'Ken',
--     'Brooks',
--     'ken@test.com'
-- );

--  retreive a list of emails of customers who placed an order
-- SELECT email FROM customers;

-- JOIN을 사용하는 방법 (email의 중복 발생)
-- SELECT c.email FROM customers AS c
-- INNER JOIN orders AS o ON o.customer_id = c.id;

-- IN operator의 logic
-- first_name이 max나 manu인 customer의 id만 얻고싶다.
-- SELECT id
-- FROM customers
-- WHERE first_name = 'Max' OR first_name = 'Manu';

-- IN operator를 사용해 filter
-- SELECT id 
-- FROM customers
-- WHERE first_name NOT IN ('Max', 'Manu');

-- filter for the id\
-- retrieve the emails of customers who also placed at least one order
-- logic은 위랑 아래랑 같음
SELECT email 
FROM customers
WHERE id IN (
    SELECT customer_id 
    FROM orders
);