select
    id,
    work_history_id,
    industry,
    system_sum,
    system_details,
    role,
    dev_scale,
    dev_environment

from
    `Work_details`

where
    `Work_details`.work_history_id = /* id */0