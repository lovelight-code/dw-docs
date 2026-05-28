with
o217 as (select * from landing_tracker.object_217)

select
    o217.id as _id,
    o217.created,
    o217.updated,
    o217.created_at,
    o217.updated_at,
    o217._dlt_load_id,
    o217._dlt_id,
    false as deleted
from o217