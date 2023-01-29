-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select c.CustomerID, count(OrderID) as orderCnt, c.FirstName, c.LastName, c.Email
from customers c 
left join Orders o 
on c.CustomerId = o.CustomerId
group by c.CustomerID
order by orderCnt desc 