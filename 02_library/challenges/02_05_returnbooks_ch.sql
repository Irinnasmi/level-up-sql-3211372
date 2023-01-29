-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424
UPDATE LOANS
SET ReturnedDate = '2022-07-05'
WHERE BookID in (Select BookID 
                  from Books
                  WHERE Barcode in (6435968624, 5677520613,8730298424))
and ReturnedDate is NULL;
select * from Loans order by  ReturnedDate desc