with CTE_Example as
(
select gender,avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal, count(salary) as count_sal
 from employee_demographics as dem 
 join employee_salary as sal
 on dem.employee_id = sal.employee_id
 group by gender
 )
 select avg(avg_sal) from CTE_Example;
 
 
 -- another way
 select avg(avg_sal) from
 (select gender,avg(salary) as avg_sal, max(salary) as max_sal, min(salary) as min_sal, count(salary) as count_sal
 from employee_demographics as dem 
 join employee_salary as sal
 on dem.employee_id = sal.employee_id
 group by gender) dem;
 
 with CTE_Example as
 (select employee_id, gender, birth_date from employee_demographics
 where birth_date > '1985-01-01'
 ),
 CTE_Example2 as
 (select employee_id, salary from employee_salary 
 where salary > 50000)
 select * from CTE_Example
 join CTE_Example2 on CTE_Example.employee_id = CTE_Example2.employee_id
 ;
 
 
 
 -- temparary
  create temporary table temp_table
  ( first_name varchar(50),
  last_name varchar(50),
  favorite_movie varchar(100)
  );
  
  select * from temp_table;
  
  insert into temp_table values
  ('pavi', 'thara', 'lion');
  
 create temporary table salary_over_50k
 select * from employee_salary 
 where salary > 50000;
 
 select * from salary_over_50k;