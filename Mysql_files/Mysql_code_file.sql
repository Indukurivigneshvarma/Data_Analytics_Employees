CREATE DATABASE IF NOT EXISTS employeedb;
USE employeedb;

CREATE TABLE messy_employees (
    employee_id INT,
    name VARCHAR(100),
    gender VARCHAR(20),
    age VARCHAR(50),
    department VARCHAR(100),
    designation VARCHAR(100),
    joining_date VARCHAR(50),
    salary VARCHAR(50),
    bonus VARCHAR(50),
    projects_assigned VARCHAR(255),
    performance_score VARCHAR(50),
    training_completed VARCHAR(20),
    promotion_eligible VARCHAR(20),
    leaves_taken VARCHAR(50),
    remote_work_days VARCHAR(50),
    skills VARCHAR(255)
);

SET SQL_SAFE_UPDATES = 0;

UPDATE messy_employees
SET 
    gender = CASE
        WHEN gender IN ('M','male','Male','m') THEN 'Male'
        WHEN gender IN ('F','female','f','Female') THEN 'Female'
        ELSE 'Unknown'
    END,
    age = CASE
        WHEN age = '' OR age IS NULL THEN NULL
        ELSE CAST(REPLACE(age,' years','') AS UNSIGNED)
    END;
    

UPDATE messy_employees
SET salary = NULLIF(TRIM(salary), '');  
ALTER TABLE messy_employees
MODIFY COLUMN salary INT;

UPDATE messy_employees
SET bonus = CASE
    WHEN bonus LIKE '%\%%' THEN CAST(REPLACE(bonus, '%','') AS DECIMAL(5,2)) / 100
    WHEN bonus = '' THEN NULL
    ELSE bonus
END;

UPDATE messy_employees
SET designation = CASE
    WHEN designation LIKE 'Sr%' OR designation LIKE 'senior%' THEN 'Senior Analyst'
    WHEN designation LIKE 'Jr%' THEN 'Junior Analyst'
    WHEN designation LIKE 'Manager%' THEN 'Manager'
    WHEN designation LIKE 'Intern%' THEN 'Intern'
    ELSE designation
END;

SELECT joining_date
FROM messy_employees
WHERE joining_date REGEXP '^[0-9]{2}-[A-Za-z]{3}-[0-9]{4}$';
UPDATE messy_employees
SET joining_date = STR_TO_DATE(joining_date, '%m/%d/%Y')
WHERE joining_date REGEXP '^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$';
UPDATE messy_employees
SET joining_date = STR_TO_DATE(joining_date, '%m/%d/%Y')
WHERE joining_date REGEXP '^[0-9]{1,2}/[0-9]{1,2}/[0-9]{4}$';


UPDATE messy_employees
SET training_completed = CASE
    WHEN training_completed IN ('Yes','Y') THEN 'Yes'
    WHEN training_completed IN ('No','N') THEN 'No'
    ELSE 'Unknown'
END;

UPDATE messy_employees
SET promotion_eligible = CASE
    WHEN promotion_eligible = 'Yes' THEN 'Yes'
    WHEN promotion_eligible = 'No' THEN 'No'
    ELSE 'Pending'
END;

UPDATE messy_employees
SET remote_work_days = NULLIF(REPLACE(remote_work_days, ' days', ''), '');

DELETE e1
FROM messy_employees e1
JOIN messy_employees e2
  ON e1.employee_id = e2.employee_id
 AND e1.joining_date < e2.joining_date;
 
CREATE TABLE clean_employees AS
SELECT * FROM messy_employees;

COMMIT;




