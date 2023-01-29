-- Prepare a report of the library patrons
-- who have checked out the fewest books.

Select p.PatronID, p.FirstName, p.Email, count(LoanID) as Loincnt
From Loans l 
left join Patrons p on l.PatronId = p.PatronId
where l.ReturnedDate is not NULL
Group by p.PatronId
Order by Loincnt