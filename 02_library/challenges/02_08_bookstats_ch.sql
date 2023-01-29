-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

Select Published, count(DISTINCT(Title)) as TitleCnt
From Books
Group By Published
Order by TitleCnt desc

Select count(l.BookID) as ReturnsCnt, Title
From Books b 
Left join Loans l on b.BookID=l.BookID
Where l.ReturnedDate is not NULL
Group By Title
Order by ReturnsCnt desc 