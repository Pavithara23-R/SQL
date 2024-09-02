select first_name, last_name, age,
case
	when age <= 30 then 'young'
end
from employee_demographics
;


select first_name, last_name, age,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'Old'
    when age >= 50 then "on Death's door"
end as Age_Bracket
from employee_demographics
;


select first_name, last_name, salary,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary + (salary * 0.07)
end as new_salary,
case
	when dept_id = 6 then salary * .10
end as bonus
from employee_salary;

select * from employee_salary;

