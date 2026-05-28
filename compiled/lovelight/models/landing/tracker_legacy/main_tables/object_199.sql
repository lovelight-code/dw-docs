with
o199 as (select * from landing_tracker.object_199)

select
    o199.id as _id,
    o199.created,
    o199.updated,
    o199.field_2894,
    o199.created_at,
    o199.updated_at,
    o199._dlt_load_id,
    o199._dlt_id,
    false as deleted
from o199