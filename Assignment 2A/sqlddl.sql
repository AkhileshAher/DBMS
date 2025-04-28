SHOW DATABASES;

CREATE DATABASE Employee;

USE Employee;

CREATE TABLE Emp(
    eno INT(3) PRIMARY KEY,
    ename VARCHAR(20),
    address VARCHAR(20),
    joindate DATE,
    post VARCHAR(20),
    salary INT(4)
);

DESC Emp;

CREATE TABLE emp_proj(
    eno INT(3),
    project_name VARCHAR(20),
    address VARCHAR(20)
);

DESC emp_proj;

CREATE INDEX n1 ON Emp(ename);

SELECT * FROM Emp;

DESC Emp;

ALTER TABLE Emp ADD INDEX n2(ename);

CREATE VIEW v1 AS SELECT ename, post, salary FROM Emp;

INSERT INTO Emp VALUES(101, 'Akhilesh', 'Pune', '20.11.2021', 'Clerk', 20000);

INSERT INTO Emp VALUES(102, 'Arjun', 'Pune', '20.10.2022', 'Manager', 50000);

SELECT * FROM Emp;

SELECT * FROM v1;

EXIT;
