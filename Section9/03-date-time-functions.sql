-- Postgresql (DOW)
-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin
-- FROM memberships;

-- SELECT WEEKDAY(last_checkin) + 1 ,last_checkin
-- FROM memberships;

-- Mysql only.
SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
FROM memberships;

-- Postgresql only
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;