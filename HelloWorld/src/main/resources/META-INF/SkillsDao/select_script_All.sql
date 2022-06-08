select
    /*%expand*/*
from
    `Skills`
where
    `Skills`.skill_attribute_id = 2
order by
    `Skills`.id