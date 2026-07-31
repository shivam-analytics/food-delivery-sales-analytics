CREATE DATABASE food_delivery ;
USE food_delivery;

--  total orders  
SELECT COUNT(*)  AS total_orders
FROM food_delivery_orders ;

--   Delivered Orders 
SELECT COUNT(*) AS delivery_orders 
FROM  food_delivery_orders 
WHERE is_canceled = FALSE;


-- cancelled orders 
SELECT COUNT(*) AS cancelled_orders 
FROM  food_delivery_orders
WHERE  is_canceled = TRUE; 


--  Cancellation Rate 
SELECT   
ROUND(SUM(is_canceled)*100.0/COUNT(*),2
) AS cancellation_rate
from food_delivery_orders ; 

--  Average Delivery Time 
SELECT 
ROUND(AVG(delivery_duration_min),2
) as avg_rating
from food_delivery_orders ;

--  Restaurant-wise Orders 
SELECT restaurant ,
count(*) as total_orders 
from food_delivery_orders 
group  by restaurant 
order by  total_orders desc ;

--  City-wise Orders 

select  city ,
count(*)  total_orders 
from food_delivery_orders 
group  by  city
order by  total_orders; 

-- Cancellation Reasons 
select cancel_reason,
count(*) as Cancellations
from food_delivery_orders
group by  cancel_reason
order by  Cancellations   desc ;

--  Restaurant-wise Average Rating  
SELECT  restaurant ,
ROUND(AVG(customer_rating),
2) AS avg_Salary
FROM food_delivery_orders 
group by restaurant  
ORDER BY avg_Salary DESC;

 




