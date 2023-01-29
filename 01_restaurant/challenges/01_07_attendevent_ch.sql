-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

update  Anniversary
SET PartySize = 3
where CustomerId = 
  (select CustomerId
  from customers
  where Email = 'atapley2j@kinetecoinc.com'
)
SELECT * from Anniversary where PartySize is not Null