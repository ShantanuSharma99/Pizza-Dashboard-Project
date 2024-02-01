SELECT DATENAME(DW,order_date) as  order_day,
AS Total_orders FROM pizza_sales
GROUP BY DATENAME(DW,order_date);
SELECT*FROM pizza_sales;


--Hourly trends
SELECT DATEPART(HOUR, order_time) AS order_hours, COUNT (DISTINCT order_id) AS Total_orders FROM 
PizzaDB.dbO.pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time);
SELECT*FROM pizza_sales;


SELECT PizzaDB.dbo.pizza_category,SUM(total_price)*100 /(SELECT SUM(total_price) FROM pizza_sales) AS PCT
FROM pizza_sales
GROUP BY pizza_category;


