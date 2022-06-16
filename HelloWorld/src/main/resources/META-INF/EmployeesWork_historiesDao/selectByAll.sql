select
   Employees.id,
   Employees.name,
   Employees.license,
   Employees.birthday,
   Employees.address,
   Employees.final_education,
   Work_histories.id AS history_id,
   Work_histories.work_start,
   Work_histories.work_end,
   Work_histories.project_id,
   Work_details.industry,
   Work_details.system_sum,
   Work_details.role,
   Work_details.dev_scale,
   Work_details.system_details,
   Work_details.dev_environment,
   Projects.name AS projects_name,
   GROUP_CONCAT(Dev_period_phases.name) AS dpp_name




from
    `Employees`
left outer join
    `Work_histories`
on
    `Employees`.id = `Work_histories`.employee_id
left outer join
    `Work_details`
on
     `Work_details`.work_history_id = `Work_histories`.project_id
left outer join
     `Projects`
on
     `Projects`.id = `Work_histories`.project_id
left outer join
     `Dev_periods`
on
     `Dev_periods`.employee_id = `Work_details`.id
left outer join
     `Dev_period_phases`
on
	`Dev_periods`.dev_period_phases_id = `Dev_period_phases`.id
WHERE
	`Employees`.id = /* id */0

GROUP by `Projects`.id,
         	 `Work_histories`.work_start,
         	 `Work_histories`.work_end,
         	 `Work_details`.industry,
              `Work_details`.system_sum,
              `Work_details`.role,
                 `Work_details`.dev_scale,
                 `Work_details`.system_details,
                 `Work_details`.dev_environment
