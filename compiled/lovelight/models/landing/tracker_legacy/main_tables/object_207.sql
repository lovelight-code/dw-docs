with
o207 as (select * from landing_tracker.object_207)

select
    o207.id as _id,
    o207.created,
    o207.updated,
    o207.field_2973,
    o207.field_2975,
    o207.created_at,
    o207.updated_at,
    o207._dlt_load_id,
    o207._dlt_id,
    false as deleted
from o207