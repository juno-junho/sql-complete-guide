-- Building 삭제되면 teams에는 null로 남는지 test
-- DELETE FROM company_buildings
-- WHERE id = 2;
-- SELECT * FROM teams;

-- Team 삭제하면 employees에는 default 로 1이 남는지 test
-- DELETE FROM teams
-- WHERE id = 2;

-- 전체 employee 삭제시 intermediate table 삭제되는지..
DELETE FROM employees
WHERE id = 1;