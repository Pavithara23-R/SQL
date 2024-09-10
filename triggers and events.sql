 select * from employee_demographics;
 
 select * from employee_salary;
 
 -- Triggers and Events
 delimiter $$
 create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics (employee_id, first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
    
end $$

 insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
 values (13, 'Dev', 'Darsh', 'Doctor', 1000000, null);
 
 -- Events
 delimiter $$
 create event delete_retiress
 on schedule every 30 second
 do
 begin
	delete
    from employee_demographicslayoffs
    where age >= 60;
end $$