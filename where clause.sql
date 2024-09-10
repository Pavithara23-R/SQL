# where clause

select * from employee_salary;

# to get the one row
select * from employee_salary
where first_name = 'Ron'
;

# filter the data
select * from employee_salary where salary >= 50000;


select * from employee_demographics where birth_date >'1984-01-01';

#AND OR NOT ARE Logical operator
select * from employee_demographics where birth_date > '1985-01-01' AND gender = 'male';

# Like Statement  % and _

select * from employee_salary where first_name like 'jer%';

select * from employee_salary where first_name like '%er%';

select * from employee_salary where first_name like 'a__';

select * from employee_salary where birth_date like '1989';


