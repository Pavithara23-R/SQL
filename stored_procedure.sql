create procedure large_salary()
select * from employee_salary
where salary > 50000;

call large_salary;

delimiter $$
create procedure large_salary3()
begin
	select * from employee_salary
    where salary >= 50000;
    select * from employee_salary
    where salary >= 10000;
end $$

call large_salary3()

delimiter $$
create procedure large_salary4(emp_id int)
begin
	select salary from employee_salary
    where employee_id = emp_id;
end $$

call large_salary4(1)
