-- SELECT first_name, last_name
-- fROM customers
-- WHERE email = 'max@test.com';

-- SELECT EXISTS(
--     SELECT first_name, last_name
--     FROM customers
--     WHERE email = 'xyz@test.com'
-- );

-- 특정 email을 가지는 order id를 얻고 싶다.
-- JOIN을 사용할 수도 있지만 EXISTS()를 사용한다면효과적으로 할 수 있다.
SELECT o.id FROM orders AS o
WHERE EXISTS (
    SELECT email
    FROM customers as c
    WHERE o.customer_id = c.id AND c.email = 'max@test.com'
);
-- JOIN을 사용한 같은 결과 출력
-- SELECT o.id FROM orders AS O
-- INNER JOIN customers AS c ON o.customer_id = c.id
-- WHERE c.email = 'manu@test.com'