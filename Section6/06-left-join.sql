SELECT * 
FROM users AS u
LEFT JOIN addresses AS a ON a.id = u.address_id;

-- inner join과 동일한 역할

-- SELECT * 
-- FROM addresses AS a
-- LEFT JOIN users AS u ON a.id = u.address_id;

-- SELECT * 
-- FROM addresses AS a
-- LEFT JOIN users AS u ON a.id = u.address_id
-- INNER JOIN cities AS c ON c.id = a.city_id;