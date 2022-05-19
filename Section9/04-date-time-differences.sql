
-- Mysql과 postgresql에서 완전히 다름
-- SELECT  last_checkout - last_checkin
-- FROM memberships;

-- SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout)
-- FROM memberships;

-- Postgresql
-- SELECT membership_end - membership_start
-- FROM memberships;

-- SELECT DATEDIFF(membership_end, membership_start)
-- FROM memberships;
SELECT DATEDIFF(NOW(), membership_start)
FROM memberships;