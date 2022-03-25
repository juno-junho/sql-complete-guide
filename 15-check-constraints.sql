-- CREATE TABLE users(
--     full_name VARCHAR(300) NOT NULL,
--     yearly_salary INT CHECK (yearly_salary > 0),
--     -- CHECK (yearly_salary < max_salary)
-- )

ALTER TABLE users
ADD CONSTRAINT CHECK (yearly_salary > 0)