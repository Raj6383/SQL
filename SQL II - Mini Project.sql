use mini_project;
-- 1.Join all the tables and create a new table called combined_table.
-- (market_fact, cust_dimen, orders_dimen, prod_dimen, shipping_dimen)

CREATE TABLE combined_table AS (SELECT mf.Ord_id,
    mf.Prod_id,
    mf.Ship_id,
    mf.Cust_id,
    mf.Sales,
    mf.Discount,
    mf.Order_Quantity,
    mf.Profit,
    mf.Shipping_Cost,
    mf.Product_Base_Margin,
    cd.Customer_Name,
    cd.Province,
    cd.Region,
    cd.Customer_Segment,
    od.Order_ID,
    od.Order_Date,
    od.Order_Priority,
    pd.Product_Category,
    pd.Product_Sub_Category,
    sd.Ship_Mode,
    sd.Ship_Date FROM
    market_fact mf
        JOIN
    cust_dimen cd ON mf.Cust_id = cd.Cust_id
        JOIN
    orders_dimen od ON mf.Ord_id = od.Ord_id
        JOIN
    prod_dimen pd ON mf.Prod_id = pd.Prod_id
        JOIN
    shipping_dimen sd ON mf.Ship_id = sd.Ship_id);



-- 2. Find the top 3 customers who have the maximum number of orders

SELECT 
    Cust_id,
    Customer_Name,
    COUNT(Customer_Name) AS `number of orders`
FROM
    combined_table
GROUP BY Cust_id
ORDER BY COUNT(Customer_Name) DESC
LIMIT 3;



-- 3. Create a new column DaysTakenForDelivery that contains the date difference
-- of Order_Date and Ship_Date.

alter table combined_table
add  DaysTakenForDelivery int as (DATEDIFF(STR_TO_DATE(Ship_Date , "%d-%m-%Y"),STR_TO_DATE(Order_Date , "%d-%m-%Y")));


-- 4. Find the customer whose order took the maximum time to get delivered.

SELECT 
    Customer_Name,
    Customer_Segment,
    Order_Date,
    Ship_Date,
    DaysTakenForDelivery
FROM
    combined_table
WHERE
    DaysTakenForDelivery = (SELECT 
            MAX(DaysTakenForDelivery)
        FROM
            combined_table);


-- 5. Retrieve total sales made by each product from the data (use Windows
-- function)

select prod_id ,Product_Category,Product_Sub_Category,
round(sum(sales) over(partition by prod_id),2) as total_sales
from combined_table
order by total_sales desc;



-- 6. Retrieve total profit made from each product from the data (use windows
-- function)

select prod_id ,Product_Category,Product_Sub_Category,
round(sum(profit) over(partition by prod_id),2) as total_profit
from combined_table
order by total_profit desc;

-- 7. Count the total number of unique customers in January and how many of them
-- came back every month over the entire year in 2011

-- select no_of_cust_jan , no_of_cust_other 
-- from (select count(distinct Cust_id) no_of_cust_jan from combined_table 
-- where  year(STR_TO_DATE(Order_Date , "%d-%m-%Y"))=2011 and  month(STR_TO_DATE(Order_Date , "%d-%m-%Y"))=1
-- order by Cust_id) tt, 
-- (select count(t1.cust1) no_of_cust_other from (select  distinct Cust_id cust1 from combined_table 
-- where  year(STR_TO_DATE(Order_Date , "%d-%m-%Y"))=2011 and  month(STR_TO_DATE(Order_Date , "%d-%m-%Y"))=1
-- order by t1.cust1) t1
-- join (select distinct Cust_id as cust from combined_table 
-- where  year(STR_TO_DATE(Order_Date , "%d-%m-%Y"))=2011 and month(STR_TO_DATE(Order_Date , "%d-%m-%Y"))<>1) t2
-- on t1.cust1= t2.cust) t2;

SELECT distinct Month(STR_TO_DATE(Order_Date,'%d-%m-%Y')) as months, count(cust_id) OVER
(PARTITION BY month(STR_TO_DATE(Order_Date,'%d-%m-%Y')) order by month(STR_TO_DATE(Order_Date,'%d-%m-%Y'))) AS
Total_Unique_Customers
FROM combined_table
WHERE year(STR_TO_DATE(Order_Date,'%d-%m-%Y'))=2011 AND cust_id
IN (SELECT DISTINCT cust_id
FROM combined_table
WHERE month(STR_TO_DATE(Order_Date,'%d-%m-%Y'))= 01
AND year(STR_TO_DATE(Order_Date,'%d-%m-%Y'))=2011);





-- 8. Retrieve month-by-month customer retention rate since the start of the
-- business.(using views)



UPDATE orders_dimen 
SET 
    order_date = STR_TO_DATE(order_date, '%d-%m-%Y');

-- Changing dtype to DATE:
ALTER TABLE orders_dimen
MODIFY order_date DATE;

-- Checking the changes:
DESC orders_dimen; # done

# Changing ship_date dtyoe from text to DATE:
-- Checking original dtypes:
DESC shipping_dimen;

-- Changing ship_date to SQL date format, i.e. yyyy-mm-dd:
UPDATE shipping_dimen 
SET 
    ship_date = STR_TO_DATE(ship_date, '%d-%m-%Y');

-- Changing dtype to DATE:
ALTER TABLE shipping_dimen
MODIFY ship_date DATE;

DESC shipping_dimen;

CREATE OR REPLACE VIEW Visit_log AS
    SELECT 
        cust_id,
        TIMESTAMPDIFF(MONTH,
            '2009-01-01',
            order_date) AS visit_month
    FROM
        combined_table
    GROUP BY 1 , 2
    ORDER BY 1 , 2;
SELECT 
    *
FROM
    Visit_log;



## 2 

Create view Time_Lapse AS
SELECT distinct cust_id,visit_month,
lead(visit_month, 1) over(
partition BY cust_id
ORDER BY cust_id, visit_month) led FROM Visit_log;

SELECT 
    *
FROM
    Time_Lapse;

CREATE VIEW user_retention AS
SELECT DISTINCT customer_name,YEAR(order_date) AS `Year`,MONTH(order_date) AS visit_month,
LEAD(MONTH(order_date),1) 
OVER(PARTITION BY customer_name,year(order_date) ORDER BY MONTH(ORDER_DATE)) AS next_visit_month
FROM combined_table
order by YEAR(order_date);


CREATE VIEW time_lapse_calculated AS
    SELECT 
        cust_id, visit_month, led, led - visit_month AS time_diff
    FROM
        Time_Lapse;

SELECT 
    *
FROM
    time_lapse_calculated;


CREATE VIEW customer_category AS
    SELECT 
        cust_id,
        visit_month,
        CASE
            WHEN time_diff = 1 THEN 'retained'
            WHEN time_diff > 1 THEN 'irregular'
            WHEN time_diff IS NULL THEN 'churned'
        END AS cust_category
    FROM
        time_lapse_calculated;

SELECT 
    *
FROM
    customer_category;


SELECT 
    visit_month,
    (COUNT(IF(cust_category = 'retained', 1, NULL)) / COUNT(cust_id)) AS retention
FROM
    customer_category
GROUP BY 1
ORDER BY visit_month ASC;


-- Tips:
-- #1: Create a view where each user’s visits are logged by month, allowing for
-- the possibility that these will have occurred over multiple # years since
-- whenever business started operations
-- # 2: Identify the time lapse between each visit. So, for each person and for each
-- month, we see when the next visit is.
-- # 3: Calculate the time gaps between visits
-- # 4: categorise the customer with time gap 1 as retained, >1 as irregular and
-- NULL as churned
-- # 5: calculate the retention month wise


