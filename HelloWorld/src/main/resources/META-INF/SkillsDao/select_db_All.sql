select
    /*%expand*/*
from
    `Skills`
where
    `Skills`.skill_attribute_id = 3
order by
    `Skills`.id