SELECT
    /*%expand*/*
FROM
    `Skills`
WHERE
    `Skills`.skill_attribute_id = 2
AND
    `Skills`.delete_flag = 0
ORDER BY
    `Skills`.id