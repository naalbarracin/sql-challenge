COPY departmentemployee FROM 'C:\Bootcamp\homework\EmployeeSQL\sql-challenge\data\dept_emp.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM departmentemployee

COPY departmentmanager FROM 'C:\Bootcamp\homework\EmployeeSQL\sql-challenge\data\dept_manager.csv' DELIMITER ',' CSV HEADER;

select * from departmentmanager

COPY departments FROM 'C:\Bootcamp\homework\EmployeeSQL\sql-challenge\data\departments.csv' DELIMITER ',' CSV HEADER;

select * from departments

COPY employees FROM 'C:\Bootcamp\homework\EmployeeSQL\sql-challenge\data\employees.csv' DELIMITER ',' CSV HEADER;

select * from employees

COPY salaries FROM 'C:\Bootcamp\homework\EmployeeSQL\sql-challenge\data\salaries.csv' DELIMITER ',' CSV HEADER;

select * from salaries

COPY titles FROM 'C:\Bootcamp\homework\EmployeeSQL\sql-challenge\data\titles.csv' DELIMITER ',' CSV HEADER;

select * from titles