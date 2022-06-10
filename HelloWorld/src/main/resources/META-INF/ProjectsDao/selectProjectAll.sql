SELECT
    `Projects`.id,
    `Companies`.name as company_name,
    `Projects`.name as project_name
FROM
    `Projects`,`Companies`
WHERE
    `Projects`.company_id = `Companies`.id
AND
    `Projects`.delete_flag = 0