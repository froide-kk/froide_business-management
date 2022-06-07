select
    id,
    name,
    department_id,
    join_date

from
    `Employees`
where
    `Employees`.department_id
LIKE
 /*  department_id  */''