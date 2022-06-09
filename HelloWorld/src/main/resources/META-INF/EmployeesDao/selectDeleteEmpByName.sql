SELECT
Employees.id,
Employees.name AS emp_name,
Departments.name AS dep_name,
Employees.email,
Employees.join_date

FROM
`Employees`

LEFT JOIN
`Departments`

ON
`Employees`.department_id = `Departments`.id

 WHERE
 `Employees`.delete_flag = 0

AND
`Employees`.name
LIKE
 /*'%' + name + '%' */''