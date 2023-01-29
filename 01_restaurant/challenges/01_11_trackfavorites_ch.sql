-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select * from customers where LastName = 'Goldwater'

UPDATE Customers
SET FavoriteDish = (select DishID 
                from Dishes
                where Name = 'Quinoa Salmon Salad')
where CustomerID = 42