with
o134 as (select * from landing_tracker.object_134)

select
    o134.id as _id,
    o134.created,
    o134.updated,
    o134.field_1913,
    o134.field_1926,
    o134.field_1937,
    o134.created_at,
    o134.updated_at,
    o134._dlt_load_id,
    o134._dlt_id,
    false as deleted
from o134