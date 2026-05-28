with
o175 as (select * from landing_tracker.object_175)

select
    o175.id as _id,
    o175.created,
    o175.updated,
    o175.field_2512,
    o175.created_at,
    o175.updated_at,
    o175._dlt_load_id,
    o175._dlt_id,
    false as deleted
from o175