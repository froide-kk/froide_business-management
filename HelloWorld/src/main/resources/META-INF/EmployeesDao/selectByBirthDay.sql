SELECT
  Employees.id,
  Employees.name AS emp_name,
  Departments.name AS dep_name,
  Employees.join_date
FROM
  `Employees`
  LEFT JOIN
    `Departments`
  ON
    `Employees`.department_id = `Departments`.id
where
    MONTH(`Employees`.birthday) = /* birthday */0
LIKE
 /*  birthday  */''