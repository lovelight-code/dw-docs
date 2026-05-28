with
o152 as (select * from landing_tracker.object_152)

select
    o152.id as _id,
    o152.created,
    o152.updated,
    o152.field_2205,
    o152.field_2206,
    o152.created_at,
    o152.updated_at,
    o152._dlt_load_id,
    o152._dlt_id,
    false as deleted
from o152