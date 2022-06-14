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
    where `Employees`.delete_flag = 0;
ORDER BY
  `Employees`.id
;