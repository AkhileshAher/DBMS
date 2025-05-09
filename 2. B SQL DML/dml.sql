-- 1. Create the database
CREATE DATABASE Industry;
-- Output: Query OK, 1 row affected

-- 2. Select the database
USE Industry;
-- Output: Database changed

-- 3. Create the Emp1 table
CREATE TABLE Emp1(
    Emp_id INT,
    Ename VARCHAR(10),
    Address VARCHAR(20),
    SALARY INT,
    Commision INT
);
-- Output: Query OK, 0 rows affected

-- 4. Describe the Emp1 table
DESC Emp1;
-- Output:
-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | Emp_id    | int         | YES  |     | NULL    |       |
-- | Ename     | varchar(10) | YES  |     | NULL    |       |
-- | Address   | varchar(20) | YES  |     | NULL    |       |
-- | SALARY    | int         | YES  |     | NULL    |       |
-- | Commision | int         | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+

-- 5. Insert multiple rows into Emp1
INSERT INTO Emp1 VALUES  
(1, 'Amit', 'Pune', 35000, 5000),
(2, 'Sneha', 'Pune', 25000, NULL),
(3, 'Savita', 'Nashik', 28000, 2000),
(4, 'Pooja', 'Mumbai', 19000, NULL),
(5, 'Sagar', 'Mumbai', 25000, 3000);
-- Output: Query OK, 5 rows affected

-- 6. Display all rows from Emp1
SELECT * FROM Emp1;
-- Output:
-- +--------+--------+--------+--------+-----------+
-- | Emp_id | Ename  | Address| SALARY | Commision |
-- +--------+--------+--------+--------+-----------+
-- | 1      | Amit   | Pune   | 35000  | 5000      |
-- | 2      | Sneha  | Pune   | 25000  | NULL      |
-- | 3      | Savita | Nashik | 28000  | 2000      |
-- | 4      | Pooja  | Mumbai | 19000  | NULL      |
-- | 5      | Sagar  | Mumbai | 25000  | 3000      |
-- +--------+--------+--------+--------+-----------+

-- 7. Find different locations employees belong to
SELECT DISTINCT Address FROM Emp1;
-- Output:
-- Pune
-- Nashik
-- Mumbai

-- 8. Find maximum and minimum salary
SELECT MAX(Salary) AS maxSalary, MIN(Salary) AS minSalary FROM Emp1;
-- Output:
-- maxSalary: 35000
-- minSalary: 19000

-- 9. Display employees in ascending order of salary
SELECT * FROM Emp1 ORDER BY Salary ASC;
-- Output:
-- Sorted list by Salary:
-- Pooja (19000)
-- Sneha (25000)
-- Sagar (25000)
-- Savita (28000)
-- Amit (35000)

-- 10. Find employees from Nashik or Pune
SELECT Ename FROM Emp1 WHERE Address IN ('Nashik', 'Pune');
-- Output:
-- Amit
-- Sneha
-- Savita

-- 11. Find employees who do not get commission
SELECT Ename FROM Emp1 WHERE Commision IS NULL;
-- Output:
-- Sneha
-- Pooja

-- 12. Update city of Amit to Nashik
UPDATE Emp1 SET Address = 'Nashik' WHERE Ename = 'Amit';
-- Output: Query OK, 1 row affected

-- 13. Find employees whose name starts with A
SELECT * FROM Emp1 WHERE Ename LIKE 'A%';
-- Output:
-- Amit (only entry)

-- 14. Count staff from each city (Mumbai only)
SELECT COUNT(*) AS staffcount FROM Emp1 WHERE Address = 'Mumbai';
-- Output:
-- staffcount: 2

-- 15. Count staff from each city (all grouped)
SELECT Address, COUNT(*) AS staffcount FROM Emp1 GROUP BY Address;
-- Output:
-- Address: Nashik, staffcount: 3
-- Address: Mumbai, staffcount: 2

-- 16. Create a new Project table
CREATE TABLE Project (
    Prno INT,
    Addr VARCHAR(20)
);
-- Output: Query OK, 0 rows affected

-- 17. Insert data into Project
INSERT INTO Project VALUES 
(10, 'Mumbai'),
(20, 'Nashik'),
(30, 'Delhi');
-- Output: Query OK, 3 rows affected

-- 18. Find distinct addresses from both Emp1 and Project
SELECT Address AS Location FROM Emp1 
UNION 
SELECT Addr AS Location FROM Project;
-- Output:
-- Mumbai
-- Nashik
-- Pune
-- Delhi
