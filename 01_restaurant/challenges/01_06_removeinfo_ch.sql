-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
select * 
from Customers c 
left join Reservations r 
on c.CustomerID = r.CustomerID
where FirstName = 'Norby' and date(r.Date) > '2022-07-24'

DELETE FROM Reservations
where ReservationID = '2000'