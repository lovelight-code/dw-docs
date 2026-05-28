with
o136 as (select * from landing_tracker.object_136)

select
    o136.id as _id,
    o136.created,
    o136.updated,
    o136.field_1923,
    o136.created_at,
    o136.updated_at,
    o136._dlt_load_id,
    o136._dlt_id,
    false as deleted
from o136