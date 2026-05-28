with
o125 as (select * from landing_tracker.object_125)

select
    o125.id as _id,
    o125.created,
    o125.updated,
    o125.field_1844,
    o125.field_1845,
    o125.created_at,
    o125.updated_at,
    o125._dlt_load_id,
    o125._dlt_id,
    false as deleted
from o125