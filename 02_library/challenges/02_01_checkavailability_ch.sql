-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
select 
(Select count(distinct(b.BookID))
from Books b 
Where b.Title = 'Dracula')
-
(SELECT count(distinct(l.BookID))
from  Books b 
join Loans l on b.BookID = l.BookID
Where ReturnedDate is null and b.Title = 'Dracula')
 as available
