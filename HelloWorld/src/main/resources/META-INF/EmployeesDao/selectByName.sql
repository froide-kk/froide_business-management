select
    id,
    name,
    department_id,
    join_date,
    email

from
    `Employees`
where
    `Employees`.name
LIKE
 /*'%' + name + '%' */''