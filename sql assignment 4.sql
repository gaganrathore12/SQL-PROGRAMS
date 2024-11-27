create database reliance;
use reliance;
create table jio1(
sales_id int,
product_id int,
customer_id int,
quantity int,
unit_price int,
region varchar(100),
salesdate date);

insert into jio1(sales_id,product_id,customer_id,quantity,unit_price,region,salesdate)
values
(1,101,1001,5,200,"north","2024-01-05"),
(2,102,1002,10,150,"east","2024=01-10"),
(3,103,1003,2,300,"north","2024-02-15"),
(4,104,1001,7,250,"west","2024-02-20"),
(5,101,1004,1,200,"east","2024=03-05");

select * from jio1;

/*1 Write a query to calculate the total sales (Quantity * UnitPrice) for each product.*/
select product_id ,sum(quantity*unit_price) as "total sales" from jio1 group by product_id;

/*2 Write a query to find the total number of products sold in each region.*/
select region ,sum(quantity) as "total number of product" from jio1 group by region;

/*3 Write a query to get the average sales amount per product.*/
select product_id, avg(quantity*unit_price) from jio1 group by product_id;

/*4 Find the regions where total sales are more than 3000.*/
select region, sum(quantity*unit_price) as "total sales" from jio1 group by region having sum(quantity * unit_price)>3000;

/*5 Write a query to get the maximum quantity sold for each product.*/
select product_id ,max(quantity) from jio1 group by product_id;

/*6 Write a query to calculate the average quantity of products sold per region.*/
select region ,avg(quantity) from jio1 group by region;

/* 7 Find the product IDs that have generated a total sales amount of more than 1000.*/  
select product_id,sum(quantity*unit_price) as "total sales amount>1000" from jio1 group by product_id having sum(quantity*unit_price)>1000;

/* 8 Write a query to get the total number of sales (rows) made for each customer.*/ 
select customer_id ,count(quantity) as "total numner of sales (rows)" from jio1 group by customer_id;

/* 9 Find the products for which the average quantity sold is less than 5.*/
select product_id ,avg(quantity) as "average quantity sold is < 5" from jio1 group by product_id having avg(quantity)<5;

/* 10 Write a query to find the sum of total sales for each customer in each region.*/
select customer_id,region ,sum(quantity*unit_price) as "total sales for each customer and each region" from jio1 group by customer_id,region;

/* 11 Write a query to calculate the total sales for each month.*/
select monthname(salesdate) ,sum(quantity*unit_price) as "total sales for each month" from jio1 group by monthname(salesdate);

/* 12 Find the regions where the average unit price is more than 200.*/ 
select region ,avg(unit_price) as "average unit_price is > 200" from jio1 group by region having avg(unit_price)>200;

/* 13 Write a query to get the minimum and maximum quantity sold per region.*/ 
select region ,max(quantity) , min(quantity) as "min and max sold per region" from jio1 group by region;

/* 14 Find the customers who have made more than 2 purchases.*/  
select customer_id ,count(quantity) as "customer made > 2 purchases" from jio1 group by  customer_id having count(quantity)>2;

/* 15 Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.*/  
select product_id ,sum(quantity*unit_price) as "total sales exceed 1500" from jio1 group by product_id having sum(quantity * unit_price)>1500;

drop table jio1;