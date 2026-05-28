with
o194 as (select * from landing_tracker.object_194)

select
    o194.id as _id,
    o194.created,
    o194.updated,
    o194.field_2798,
    o194.field_2799,
    o194.created_at,
    o194.updated_at,
    o194._dlt_load_id,
    o194._dlt_id,
    false as deleted
from o194