select
    id,
    name,
    department_id,
    join_date

from
    `Employees`
where
    `Employees`.name
LIKE
 /*'%' + name + '%' */''