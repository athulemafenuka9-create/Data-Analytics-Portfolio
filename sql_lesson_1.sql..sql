CREATE database my_first_practise;
use my_first_practise;
create table employees ( id INT ,name VARCHAR(50), salary INT );
insert into employees (id, name, salary) values (1,'Alice', 55000), (2,'Bob', 48000), (3, 'Charlie', 62000);
select * from employees where salary > 50000;
