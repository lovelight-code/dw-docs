with
o43 as (select * from landing_tracker.object_43)

select
    o43.id as _id,
    o43.created,
    o43.updated,
    o43.field_437,
    o43.field_438,
    o43.field_601,
    o43.created_at,
    o43.updated_at,
    o43._dlt_load_id,
    o43._dlt_id,
    false as deleted
from o43