SELECT booking_date AS date, SUM(num_guests) FROM bookings
GROUP BY booking_date;