select
   Employees.id,
   Employees.name,
   Employees.license,
   Employees.birthday,
   Employees.address,
   Employees.final_education
from
    `Employees`
where
    `Employees`.id = /* id */0