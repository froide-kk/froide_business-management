select
   Employees.id,
   Employees.name,
   Employees.license,
   Employees.birthday,
   Employees.address,
   Employees.final_education,
   Work_histories.work_start,
   Work_histories.work_end,
   Work_details.industry,
   Work_details.system_sum,
   Projects.name AS projects_name,
   Work_details.role,
   Work_details.dev_scale,
   Work_details.system_details,
   Work_details.dev_environment


from
    `Employees`
left outer join
    `Work_histories`
on
    `Employees`.id = `Work_histories`.employee_id
left outer join
    `Work_details`
on
     `Work_details`.work_history_id = `Work_histories`.id
left outer join
     `Projects`
on
     `Projects`.id = `Work_histories`.project_id
where
    `Employees`.id = /* id */0