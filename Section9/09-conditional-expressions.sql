-- 순서 바꾸면 안된다. >30 줄과 >15줄 바꾸면 결과값 달라짐.
-- SELECT amount_billed, 
--     CASE WHEN amount_billed > 30 THEN 'Good Day'
--         WHEN amount_billed > 15 AND amount_billed <= 30 THEN 'Normal Day'
--         ELSE 'Bad Day'
--     END
-- FROM orders;

-- ISODOW weekdays to stringd using subquery (numer into days)
-- Use this query as subquery to retreive the different numbers for the weekdays
-- and then implement this sub-query result as base for your outer query
-- SELECT(WEEKDAY(last_checkin) + 1) AS day ,last_checkin
-- FROM memberships;

SELECT day,
    CASE WHEN day = 1 THEN 'Monday'
        WHEN day = 2 THEN 'Tuesday'
        WHEN day = 3 THEN 'Wednesday'
        WHEN day = 4 THEN 'Thursday'
        WHEN day = 5 THEN 'Friday'
        WHEN day = 6 THEN 'Saturday'
        ELSE 'Sunday'
    END
FROM (
    SELECT WEEKDAY(last_checkin) + 1 AS day
    FROM memberships
) AS t;
