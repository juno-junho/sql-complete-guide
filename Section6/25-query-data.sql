-- -- find all employee and find out which projects they are working
-- SELECT e.id AS employee_id, e.first_name, e.last_name, p.title
-- FROM employees AS e
-- LEFT JOIN projects_employees AS pe ON pe.employee_id = e.id 
-- LEFT JOIN projects AS p ON pe.project_id = p.id;

--  find all employee that are part of specific team who is data analyst

-- SELECT e.id AS employee_id, e.first_name, e.last_name, t.name
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- WHERE t.id = 2;

-- find employees in bulding number 3

SELECT  e.id AS employee_id, e.first_name, e.last_name, b.name AS building_name
FROM employees AS e
INNER JOIN teams AS t ON e.team_id = t.id
INNER JOIN company_buildings AS b ON  b.id = t.building_id 
WHERE b.id = 3
ORDER BY e.birthdate; 