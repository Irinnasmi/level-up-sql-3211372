-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select l.DueDate, b.Title, p.FirstName, p.LastName
From Loans l 
Left join Books b on l.BookId = b.BookId
Left join Patrons p on l.PatronId = p.PatronId
WHERE l.DueDate = '2022-07-13' and l.ReturnedDate is NULL