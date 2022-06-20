select
   Employees.id,
   Employees.name,
   Employees.license,
   Employees.birthday,
   Employees.address,
   Employees.final_education,
   Work_histories.id AS histories_id,
   Work_histories.work_start,
   Work_histories.work_end,
   Work_histories.industry,
   Work_histories.system_sum,
   Projects.name AS projects_name,
   Work_histories.role,
   Work_histories.dev_scale,
   Work_histories.system_details,
   Work_histories.dev_environment

from
    `Employees`
left outer join
    `Work_histories`
on
    `Employees`.id = `Work_histories`.employee_id
left outer join
     `Projects`
on
     `Projects`.id = `Work_histories`.project_id
where
    `Employees`.id = /* id */0