select
   Employees.id,
   Employees.name,
   Employees.license,
   Employees.birthday,
   Work_histories.work_start
from
    `Employees`
left outer join
    `Work_histories`
    ON
    `Employees`.id = `Work_histories`.employee_id


where
    `Employees`.id = /* id */0