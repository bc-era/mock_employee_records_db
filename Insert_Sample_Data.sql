INSERT INTO Departments (department_name)
VALUES 
('Human Resources'),
('Finance'),
('Engineering');

INSERT INTO Employees (first_name, last_name, hire_date, job_title, department_id)
VALUES 
('Alice', 'Johnson', '2023-05-10', 'HR Manager', 1),
('Bob', 'Smith', '2022-11-01', 'Accountant', 2),
('Charlie', 'Davis', '2024-01-15', 'Software Engineer', 3),
('Dana', 'Taylor', '2021-03-30', 'Recruiter', 1);

INSERT INTO Salaries (salary_amount, effective_date, employee_id)
VALUES 
(75000.00, '2023-06-01', 1),
(68000.00, '2022-12-01', 2),
(90000.00, '2024-02-01', 3),
(62000.00, '2021-04-01', 4);


