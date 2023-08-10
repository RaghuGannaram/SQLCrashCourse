#Create the organization database
create database if not exists organization;

#Select the organization database
use organization;

#Create the employee table
create table if not exists employee (
	emp_id int not null auto_increment,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    designation varchar(10) not null,
    manager varchar(40),
    primary key(emp_id)
);

#Insert sample data
insert into employee(emp_id, first_name, last_name, designation) 
values(1, 'Bruce', 'Wayne', 'JL Member'),
	  (2, 'Clark', 'Kent', 'JL Member'),
      (3, 'Bruce', 'Banner', 'Avenger'),
      (4, 'Tony', 'Wayne', 'Stark'),
      (5, 'Diana', 'Prince', 'Avenger'),
      (6, 'Thor', 'Odinson', 'Avenger'),
      (7, 'Stephen', 'Strange', 'Avenger'),
      (8, 'Peter', 'Parker', 'Avenger');


#Need to update Tony Stark last name
update employee
set last_name = 'Stark', designation = 'Avenger'
where emp_id = 4;
      
#Need to update Diana's designation
update employee
set designation = 'JL Member'
where emp_id = 5;




      