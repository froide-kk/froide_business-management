select
    /*%expand*/*
from
    `Skills`
where
    `Skills`.skill_attribute_id = 1
AND
    `Skills`.delete_flag = 0
order by
    `Skills`.id