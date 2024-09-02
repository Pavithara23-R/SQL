#Group By
select gender, avg(age) from employee_demographics group by gender;



select occupation, salary from employee_salary group by occupation, salary;

#Aggregate function
select gender, avg(age), max(age), min(age), count(age) from employee_demographics group by gender;

#Order By (ascending and descending order)

select * from employee_demographics order by first_name desc;

select * from employee_demographics order by gender, age desc;

# also mention the position of the column

select * from employee_demographics order by 5,4;

# Having clause

select gender, avg(age) from employee_demographics group by gender having avg(age) > 40;

select occupation, avg(salary) 
from employee_salary where occupation like '%manager%'
 group by occupation  
 having avg(salary) > 75000
 ;
 
 # limit 
 select * from employee_demographics order by age desc limit 3;
 
 
 select * from employee_demographics order by age desc limit 2,1;
 
 
 # aliasing
 select gender, avg(age) as avg_age 
 from employee_demographics
 group by gender having avg_age>40
 ;
