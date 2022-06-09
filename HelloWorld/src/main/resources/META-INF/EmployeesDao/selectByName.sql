SELECT
  Employees.id,
  Employees.name AS emp_name,
  Departments.name AS dep_name,
  Employees.join_date,
  Employees.email
FROM
  `Employees`
  LEFT JOIN
    `Departments`
  ON
    `Employees`.department_id = `Departments`.id
where
    `Employees`.name
LIKE
 /*'%' + name + '%' */''