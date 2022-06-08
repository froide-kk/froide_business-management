SELECT
id,
name,
department_id,
join_date

FROM
`Employees`

 WHERE
 `Employees`.management_flag = 0

AND
`Employees`.name
LIKE
 /*'%' + name + '%' */''