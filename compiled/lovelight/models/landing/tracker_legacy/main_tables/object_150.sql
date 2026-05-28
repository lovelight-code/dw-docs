with
o150 as (select * from landing_tracker.object_150)

select
    o150.id as _id,
    o150.created,
    o150.updated,
    o150.field_2196,
    o150.field_2195,
    o150.field_2198,
    o150.field_2199,
    o150.created_at,
    o150.updated_at,
    o150._dlt_load_id,
    o150._dlt_id,
    false as deleted
from o150