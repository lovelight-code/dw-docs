with
o200 as (select * from landing_tracker.object_200)

select
    o200.id as _id,
    o200.created,
    o200.updated,
    o200.field_2904,
    o200.created_at,
    o200.updated_at,
    o200._dlt_load_id,
    o200._dlt_id,
    false as deleted
from o200