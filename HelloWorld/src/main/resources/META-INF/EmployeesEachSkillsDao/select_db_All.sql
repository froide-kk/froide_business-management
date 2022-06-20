select
   Employee_skills.id,
   Employees.id as employee_id,
   Skill_attributes.name AS attribute_name,
   Skills.name AS skill_name,
   Employee_skills.skill_level

from
    `Employees`
left outer join
      `Employee_skills`
on
      `Employees`.id = `Employee_skills`.employee_id
left outer join
      `Skills`
on
      `Employee_skills`.skill_id = `Skills`.id
left outer join
     `Skill_attributes`
on
     `Skills`.skill_attribute_id = `Skill_attributes`.id

where `Employees`.id = /* id */0 and `Skills`.skill_attribute_id = 3
