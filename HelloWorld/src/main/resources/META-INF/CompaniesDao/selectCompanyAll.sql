select
    `Companies`.name
from
    `Projects`,`Companies`
where
    `Projects`.company_id = `Companies`.id