SELECT
    `Projects`.id,
    `Companies`.name as company_name,
    `Projects`.name
FROM
    `Projects`,`Companies`
WHERE
    `Projects`.company_id = `Companies`.id
AND
    `Projects`.delete_flag = 0