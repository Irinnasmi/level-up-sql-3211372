-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

INSERT INTO Orders
(CustomerID, OrderDate)
Values(70, '2022-09-20 14:00:00')

INSERT INTO OrdersDishes (OrderID, DishID)
Values 
(1001, (select DishID from Dishes where Name = 'House Salad')),
(1001, (select DishID from Dishes where Name = 'Mini Cheeseburgers')),
(1001, (select DishID from Dishes where Name = 'Tropical Blue Smoothie'))

select sum(Price)  
from Dishes 
where DishID in (select DishID
                from OrdersDishes 
                where OrderID = 1001)