select
    /*%expand*/*
from
    `Skills`
where
    `Skills`.skill_attribute_id = 1
order by
    `Skills`.id