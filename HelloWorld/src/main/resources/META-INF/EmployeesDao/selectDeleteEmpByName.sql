SELECT
id,
name,
department_id,
join_date,
email

FROM
`Employees`

 WHERE
 `Employees`.delete_flag = 0

AND
`Employees`.name
LIKE
 /*'%' + name + '%' */''