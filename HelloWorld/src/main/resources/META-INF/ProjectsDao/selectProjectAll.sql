SELECT
    `Projects`.id,
    `Companies`.name as company_name,
    `Projects`.name as project_name,
    `Companies`.id as company_id
FROM
    `Projects`
INNER JOIN
    `Companies`
ON
    `Projects`.company_id = `Companies`.id
WHERE
    `Projects`.delete_flag = 0