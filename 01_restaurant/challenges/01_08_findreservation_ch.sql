-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT * 
FROM Reservations r
left join Customers c
on r.CustomerID = c.CustomerID
where date(r.date) = '2022-06-14' and PartySize = 4