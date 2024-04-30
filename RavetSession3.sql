-- 1. create the database
create database etlravet;

-- 2. Use the database
use etlravet;

-- 3. Create the table users with constraints
create table users(
	userID int primary key,
    userName varchar(50) not null unique,
    age int check(age>=18),
    email varchar(100) unique,
    contact char(10) unique);
    
-- 5. Try to create users table again
create table users3(
	userID int,
    userName varchar(50));
    
-- 4. View the table
select * from users;

-- 5. Insert values in the table
insert into users
values (1,'Utkarsh1',28,'utkarsh@gmail.com','0123456789');

-- 6. View the users table
select * from users;

-- 7. Adding duplicate userID
insert into users
values (1,'Sarthak3',35,'sarthak@test.com','2345678901');

-- 8. View the users table again
select * from users;

-- 9. Correcting the duplicated id
insert into users
values (2,'Sarthak3',35,'sarthak@test.com','2345678901');

-- 10. View the table again
select * from users;

-- 11. Skipping the username column
insert into users(userID,age,email,contact)
values (3,35,'raman@gmail.com','4567890123');

-- 12. Correcting above query
insert into users
values (3,'Raman34',35,'raman@gmail.com','4567890123');

-- 13. view the table again
select * from users;

-- 14. Trying to add user with age<18
insert into users
values (4, 'Aditi45',15,'aditi@gmail.com','5678901234');

-- 15. Duplicate email or contact
insert into users 
values (4, 'Rakesh', 25, 'raman@gmail.com','7890123456');

insert into users
values (4, 'Suresh', 26, 'example@gmail.com','0123456789');

-- 16. Creating new table dept
create table dept(
	deptID int primary key,
    deptName varchar(50) not null unique);
    
-- 17. Add multiple values in dept table
insert into dept
values (1,'HR'),
	   (2,'Engg.'),
       (3,'Purchase'),
       (4,'Sales'),
       (5,'Accounts');
       
-- 18. Viewing the dept table
select * from dept;

-- 19. Creating employee table
create table emp(
	empID int primary key,
    fname varchar(50) not null,
    lname varchar(50) not null,
    email varchar(100) unique,
    deptID int not null,
    sal decimal(10,2) check(sal>0),
    HireDate date default '2023-01-01',
    foreign key (deptID) references dept(deptID));
    
-- 20. View the emp table
select * from emp;

-- 21. Insert values in employees table
insert into emp(empID,fname,lname,email,deptID,sal) 
values (1,'Utkarsh','Gaikwad','utkarsh@gmail.com',2,25000);

insert into emp(empID,fname,lname,email,deptID,sal) 
values (2,'Sarthak','Verma','sarthak@gmail.com',3,50000),
	   (3,'Ramesh','Sharma','ramesh@gmail.com',4,34000),
       (4,'Aditi','Naik','aditi@gmail.com',5,27000);
       
-- 22. View employess table
select * from emp;

insert into emp
value (5,'Rakesh','Gaikwad','rakesh@gmail.com',3,30000,'2023-02-01');

insert into emp
value (6,'Raman','Naik','raman@gmail.com',10,35000,'2023-03-02');
