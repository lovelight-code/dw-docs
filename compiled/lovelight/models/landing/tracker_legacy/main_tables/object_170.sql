with
o170 as (select * from landing_tracker.object_170)

select
    o170.id as _id,
    o170.created,
    o170.updated,
    o170.field_2449,
    o170.field_2450,
    o170.created_at,
    o170.updated_at,
    o170._dlt_load_id,
    o170._dlt_id,
    false as deleted
from o170