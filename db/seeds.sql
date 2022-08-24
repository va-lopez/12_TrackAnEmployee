INSERT INTO departments
  (name)
VALUES
  ('Design'),
  ('Information Technology'),
  ('General Management'),
  ('Finance'),
  ('Human Resources'),
  ('Engineering');

INSERT INTO roles
  (title, salary, department_id)
VALUES
  ('Senior Designer',110000, 1),
  ('Graphic Designer',80000, 1),
  ('Junior Designer',60000, 1),
  ('IT Manager', 115000, 2),
  ('Computer Network Architect',109020, 2),
  ('Web Developer',69430, 2),
  ('Client Manager',120000, 3),
  ('Accounting Manager', 80000, 4),
  ('Financial Analyst', 75000, 4),
  ('HR Manager', 65000, 5),
  ('Payroll Clerk',46180, 5),
  ('HR Specialist',62000, 5),
  ('Lead Programmer', 115000, 6),
  ('Systems Engineer', 97000, 6);

SELECT roles.*, departments.name AS department_name
FROM roles
LEFT JOIN departments ON roles.department_id = departments.id;


INSERT INTO employees
  (first_name, last_name, role_id, manager_id)
VALUES
  ('Aleksander', 'Moses', 1, NULL),
  ('Pierce', 'Eriksen', 2, 1),
  ('Jess', 'Peter', 3, 1),
  ('Charles', 'LeRoi', 4, NULL),
  ('Katherine', 'Mansfield', 5, 1),
  ('Dora', 'Carrington', 6, 1),
  ('Edward', 'Bellamy', 7, NULL),
  ('Montague', 'Summers', 8, NULL),
  ('Jared', 'Gutiérrez', 9, 1),
  ('Subir', 'Chowdhury', 10, NULL),
  ('Anthoy', 'Suarez', 11, 1),
  ('Victoria', 'Hinojosa', 12, 1),
  ('Mauricio', 'Nunez', 13, 1),
  ('Nicholas', 'Foresberg', 14, NULL);

SELECT employees.*, roles.title AS role_title
FROM employees
LEFT JOIN roles
ON employees.role_id = roles.id;

SELECT employees. *, employees.first_name AS manager_name
FROM employees
right JOIN employees
on employees.manager_id = employees.id;
  