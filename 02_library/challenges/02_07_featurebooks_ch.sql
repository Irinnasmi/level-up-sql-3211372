-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

Select b.Title, Barcode
From Books b 
Where b.Published between 1890 and 1899
and BookID not in (select BookId from Loans 
                      where ReturnedDate is null)