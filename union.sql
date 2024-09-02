-- union

select age, gender from employee_demographics 
union select first_name, last_name from employee_salary
;

# distinct to give the unique value doesnt allow duplicate

select first_name, last_name from employee_demographics
union distinct select first_name, last_name from employee_salary
;

select first_name, last_name from employee_demographics
union all select first_name, last_name from employee_salary
;

select first_name, last_name, 'old men' as label from employee_demographics
where age > 40 and gender = 'male'
union 
select first_name, last_name, 'old lady' as label from employee_demographics
where age > 40 and gender = 'female'
union
select first_name, last_name, 'Highly paid employee' as label 
from employee_salary where salary > 70000 order by first_name, last_name
;

