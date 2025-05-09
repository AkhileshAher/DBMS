-- 1. Create and Use Database
CREATE DATABASE 2a;
-- Output: Query OK, 1 row affected

USE 2a;
-- Output: Database changed

-- 2. Create Employee Table with Constraints
CREATE TABLE Employee (
    Eno INT PRIMARY KEY,
    Ename VARCHAR(20) NOT NULL,
    Address VARCHAR(20) DEFAULT 'Nashik',
    joindate VARCHAR(20),
    post VARCHAR(20),
    salary INT CHECK(salary > 5000)
);
-- Output: Query OK, 0 rows affected

-- 3. Describe Employee Table
DESC Employee;
-- Output:
-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | Eno      | int         | NO   | PRI | NULL    |       |
-- | Ename    | varchar(20) | NO   |     | NULL    |       |
-- | Address  | varchar(20) | YES  |     | Nashik  |       |
-- | joindate | varchar(20) | YES  |     | NULL    |       |
-- | post     | varchar(20) | YES  |     | NULL    |       |
-- | salary   | int         | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+

-- 4. Insert Records into Employee Table
INSERT INTO Employee VALUES (101, 'Kundan', 'Pune', 'August', 'HR', 232000);
-- Output: Query OK, 1 row affected

INSERT INTO Employee VALUES (102, 'Piyusha', 'Nagar', 'March', 'SeniorProgrammer', 98000);
-- Output: Query OK, 1 row affected

INSERT INTO Employee VALUES (103, 'Mahavir', 'Pune', 'March', 'JrProgrammer', 54000);
-- Output: Query OK, 1 row affected

-- 5. View All Records in Employee Table
SELECT * FROM Employee;
-- Output:
-- +-----+---------+--------+----------+------------------+--------+
-- | Eno | Ename   | Address| joindate | post             | salary |
-- +-----+---------+--------+----------+------------------+--------+
-- | 101 | Kundan  | Pune   | August   | HR               | 232000 |
-- | 102 | Piyusha | Nagar  | March    | SeniorProgrammer |  98000 |
-- | 103 | Mahavir | Pune   | March    | JrProgrammer     |  54000 |
-- +-----+---------+--------+----------+------------------+--------+

-- 6. Create Emp_project Table with Foreign Key
CREATE TABLE Emp_project (
    PrNo INT,
    proj_name VARCHAR(20),
    Loc INT,
    FOREIGN KEY (PrNo) REFERENCES Employee(Eno)
);
-- Output: Query OK, 0 rows affected

-- 7. Describe Emp_project Table
DESC Emp_project;
-- Output:
-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | PrNo      | int         | YES  | MUL | NULL    |       |
-- | proj_name | varchar(20) | YES  |     | NULL    |       |
-- | Loc       | int         | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+

-- 8. Create Index on Ename Field of Employee Table
CREATE INDEX i1 ON Employee(Ename);
-- Output: Query OK, 0 rows affected

-- 9. Show Indexes in Employee Table
SHOW INDEX FROM Employee;
-- Output:
-- +----------+------------+----------+--------------+-------------+-----------+
-- | Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation |
-- +----------+------------+----------+--------------+-------------+-----------+
-- | Employee |          0 | PRIMARY  |            1 | Eno         | A         |
-- | Employee |          1 | i1       |            1 | Ename       | A         |
-- +----------+------------+----------+--------------+-------------+-----------+

-- 10. Insert Record into Emp_project Table
INSERT INTO Emp_project VALUES (101, 'DBMS', 3000);
-- Output: Query OK, 1 row affected

-- 11. Display All Records from Emp_project Table
SELECT * FROM Emp_project;
-- Output:
-- +------+-----------+------+
-- | PrNo | proj_name | Loc  |
-- +------+-----------+------+
-- | 101  | DBMS      | 3000 |
-- +------+-----------+------+

-- 12. Create View to Display Ename, Post, and Salary
CREATE VIEW v1 AS 
SELECT Ename, post, salary 
FROM Employee;
-- Output: Query OK, 0 rows affected

-- 13. Display View Data
SELECT * FROM v1;
-- Output:
-- +---------+------------------+--------+
-- | Ename   | post             | salary |
-- +---------+------------------+--------+
-- | Kundan  | HR               | 232000 |
-- | Piyusha | SeniorProgrammer |  98000 |
-- | Mahavir | JrProgrammer     |  54000 |
-- +---------+------------------+--------+
"""
