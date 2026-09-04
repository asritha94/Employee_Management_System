--Database creation--

CREATE DATABASE employee_db;

USE employee_db;

--Table creation--

CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50) NOT NULL,
    Location VARCHAR(50),
    Phone VARCHAR(15),
    Description VARCHAR(100)
);


CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Email VARCHAR(50),
    Phone VARCHAR(15),
    Date_of_Birth DATE,
    Address VARCHAR(100),
    Gender VARCHAR(10),
    Date_of_Join DATE,
    Designation VARCHAR(40),
    Salary DECIMAL(10,2),
    Dept_ID INT,

    FOREIGN KEY (Dept_ID)
    REFERENCES Department(Dept_ID)
);


CREATE TABLE Project (
    Project_ID INT PRIMARY KEY,
    Project_Name VARCHAR(50),
    Start_Date DATE,
    End_Date DATE,
    Status VARCHAR(20),
    Emp_ID INT,
    Dept_ID INT,

    FOREIGN KEY (Emp_ID)
    REFERENCES Employee(Emp_ID),

    FOREIGN KEY (Dept_ID)
    REFERENCES Department(Dept_ID)
);

--Data Insertion--

INSERT INTO Department
VALUES
(101,'Human Resources','Hyderabad','9876543210','Employee Management'),
(102,'Information Technology','Bangalore','9876543211','Software Development'),
(103,'Finance','Chennai','9876543212','Accounts Department'),
(104,'Marketing','Mumbai','9876543213','Marketing and Sales'),
(105,'Research','Pune','9876543214','Research Projects'),
(106,'Testing','Hyderabad','9876543215','Software Testing'),
(107,'Support','Delhi','9876543216','Customer Support');


INSERT INTO Employee
VALUES
(1,'Rahul','Sharma','rahul@gmail.com','9871111111','1998-05-12',
'Hyderabad','Male','2021-06-15','Software Engineer',55000,102),

(2,'Priya','Reddy','priya@gmail.com','9872222222','1999-02-10',
'Bangalore','Female','2022-01-12','HR Executive',42000,101),

(3,'Amit','Kumar','amit@gmail.com','9873333333','1997-09-25',
'Chennai','Male','2020-03-18','Accountant',50000,103),

(4,'Sneha','Patel','sneha@gmail.com','9874444444','1998-12-15',
'Mumbai','Female','2021-09-01','Marketing Executive',48000,104),

(5,'Arjun','Rao','arjun@gmail.com','9875555555','1996-11-20',
'Pune','Male','2019-07-11','Research Analyst',62000,105),

(6,'Neha','Singh','neha@gmail.com','9876666666','1999-08-05',
'Hyderabad','Female','2023-02-01','QA Engineer',47000,106),

(7,'Kiran','Verma','kiran@gmail.com','9877777777','1998-03-30',
'Delhi','Male','2022-10-20','Support Engineer',43000,107);


INSERT INTO Project
VALUES
(201,'Payroll System','2024-01-10','2024-06-15','Completed',2,101),

(202,'Employee Portal','2024-02-05','2024-10-20','In Progress',1,102),

(203,'Budget Analysis','2024-03-01','2024-08-30','Completed',3,103),

(204,'Digital Marketing','2024-04-12','2024-12-15','In Progress',4,104),

(205,'AI Research','2024-05-20','2025-02-10','Planning',5,105),

(206,'Automation Testing','2024-06-15','2024-11-30','Completed',6,106),

(207,'Customer Support Portal','2024-07-01','2025-01-15','In Progress',7,107);

--Retrieve Data--

SELECT * FROM Department;

SELECT * FROM Employee;

SELECT * FROM Project;