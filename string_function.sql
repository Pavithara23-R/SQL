-- string function

select length('sky is blue');

select first_name, length(first_name) 
from employee_demographics
order by 2
;

select upper('pavithra');
select lower('DEV');

select first_name, upper(first_name) 
from employee_demographics
order by 2
;

-- Trim

select rtrim('    Tamil   ');

select first_name, left(first_name, 4) as left_side,
right(first_name, 4) as right_side,
substring(first_name,3,2),
birth_date, substring(birth_date,6,2) as birth_month
from employee_demographics;

-- replace
select first_name, replace(first_name, 'a', 'z') 
from employee_demographics
;

-- Locate

select locate('m', 'Tamil');

select first_name, locate('An', first_name) 
from employee_demographics
;


-- concat

select concat('pavi', 'thara');

select first_name, last_name, concat(first_name, ' ', last_name)
 from employee_demographics;

