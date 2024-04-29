use Practice;
select * from orders;
---1.	From the following table, write a SQL query to find all orders that meet the following conditions.
---Exclude combinations of order date equal to '2012-08-17' or customer ID greater than 3005 and purchase amount less than 1000.---
select * from orders
WHERE NOT ((ord_date = '2012-08-17' OR customer_id > 3005) AND purch_amt < 1000);

---2.	From the following table, write a SQL query to count the number of customers. 
----Return the number of customers and also find the maximum grade as the highest grade.---

SELECT * FROM customer;
select count(customer_id) as number_of_customer, max(grade) as highest_grade from customer;

---3.	 From above data arrange data in descending order with the help of grade.---
select * from customer
order by grade desc;
 
 ----From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.---

 select orders.ord_no,orders.purch_amt,customer.cust_name,customer.city
 from orders
 left join customer
 on orders.salesman_id=customer.salesman_id
 where purch_amt between 500 and 2000;


 ---3. From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.--

 select customer.cust_name,customer.city,salesman.name,salesman.commission
 from customer
 join salesman
 on customer.salesman_id=salesman.salesman_id;


 ----From the following tables write a SQL query to find salespeople who received commissions of more than 12 percent from the company. 
 ---Return Customer Name, customer city, Salesman, commission.  ---

 select customer.cust_name,customer.city,salesman.name,salesman.commission
 from customer
 Left join salesman
 on customer.salesman_id=salesman.salesman_id
 where salesman.commission > 0.12;

 ---For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list,
 ---create a report containing the customer name, city, order number, order date, and purchase amount--

 select orders.ord_no,orders.ord_date,orders.purch_amt,customer.cust_name,customer.city
 from orders
 join customer
 on orders.customer_id=customer.customer_id;
 

 