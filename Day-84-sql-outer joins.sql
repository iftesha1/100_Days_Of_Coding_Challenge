-- ___________OUTER JOINS__________

select c.customer_id,c.first_name,o.order_id
from customers c
left join orders o -- This will join the two tables for every customer_id from left table (first table) even if the condition is not valid.
	on c.customer_id=o.customer_id
order by c.customer_id;

-- ___________OUTER JOINS in multiple tables__________

select c.customer_id,c.first_name,o.order_id, sh.name as shippers
from customers c
left join orders o 
	on c.customer_id=o.customer_id
left join shippers sh
	on o.shipper_id= sh.shipper_id
order by c.customer_id;

-- ________________SELF OUTER JOINS________________
-- use sql_hr;

select e.employee_id,e.first_name,m.first_name as manager
from employees e
left join employees m
on e.reports_to = m.employee_id
