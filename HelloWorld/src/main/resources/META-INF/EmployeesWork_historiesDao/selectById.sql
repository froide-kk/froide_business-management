select
   Employees.id,
   Employees.name,
   Employees.license,
   Employees.birthday,
   Employees.address,
   Employees.final_education,
   Work_histories.work_start,
   Work_histories.work_end
from
    `Employees`
    left outer join
    `Work_histories`
    on
    `Employees`.id = `Work_histories`.employee_id
where
    `Employees`.id = /* id */0