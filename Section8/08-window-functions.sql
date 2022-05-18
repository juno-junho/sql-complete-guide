-- SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER()
-- FROM bookings; 

-- SELECT booking_date, amount_tipped, SUM(amount_tipped)
-- OVER(PARTITION BY booking_date)
-- FROM bookings; 

-- SELECT booking_date, amount_tipped,amount_billed, SUM(amount_tipped)
-- OVER(PARTITION BY booking_date ORDER BY amount_billed DESC)
-- FROM bookings;


SELECT booking_date, amount_tipped,amount_billed, RANK()
OVER(PARTITION BY booking_date ORDER BY amount_tipped DESC)
FROM bookings;