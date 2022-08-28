-- THE WHERE CLAUSE----------------------------------------------------------------------

SELECT * 
FROM customers
where points > 3000;

SELECT * 
FROM customers
where state= 'VA';

SELECT * 
FROM customers
where state != 'VA';

SELECT * 
FROM customers
where birth_date > '1990-01-01';

SELECT * 
FROM orders
where order_date >= '2019-01-01';


-- -----******************************************OPERATORS******************************************----------

-- THE AND,OR, NOT  OPERATOR-----------------------------

SELECT * 
FROM customers
where birth_date > '1990-01-01' AND  points > 1000;

SELECT * 
FROM customers
where birth_date > '1990-01-01' OR  points > 1000 ;

SELECT * 
FROM customers
where birth_date > '1990-01-01' OR  points > 1000 and state='VA';

-- N.B---AND has higher precedence than OR


SELECT * 
FROM customers
where NOT (birth_date > '1990-01-01' OR  points > 1000) ;

-- Excercise
SELECT *
FROM order_items
where  order_id = 6 and (unit_price * quantity) > 30;

-- The IN OPERATOR--------------------------------------------

SELECT * 
FROM customers
where state= 'VA' OR state = 'GA' OR state = 'FL';
-- The similar can be done as

SELECT * 
FROM customers
where state IN  ('VA', 'GA','FL') ;

-- --The BETWEEN OPERATOR--------------------------------------

SELECT * 
FROM customers
where points >= 1000 AND points <= 3000;

-- The similar can be done as

SELECT * 
FROM customers
where points between 1000 AND 3000;

-- --------------------

-- --THE LIKE OPERATOR---------------------------
select * 
from customers
where last_name like 'b%';

select * 
from customers
where last_name like '%b%';

select * 
from customers
where last_name like '_____y';

-- Exercise-----------
select *
from customers
where address like '% TRAIL%' OR  
	  address LIKE '%AVENUE%';

select *
from customers
where phone LIKE '%9';

-- --------------------------------------------------------------------------

-- THE REGEXP OPERATOR-------------------

select *
from customers
where last_name regexp 'field|mac|rose'



