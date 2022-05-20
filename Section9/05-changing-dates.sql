-- SELECT membership_start - 7, membership_start 
-- FROM memberships;

-- MySQL
-- SELECT DATE_SUB(membership_start, INTERVAL 7 DAY) ,membership_start
-- FROM memberships;

-- PostgreSQL 
SELECT (membership_start + INTERVAL '7 MONTHS')::TIMESTAMP::DATE, membership_start
FROM memberships;