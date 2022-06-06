select
      /*%expand*/*
from
    `Employees`
where
    `Employees`.department_id
LIKE
 /* department_id */''