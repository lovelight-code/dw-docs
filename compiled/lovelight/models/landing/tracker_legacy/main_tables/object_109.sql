with
o109 as (select * from landing_tracker.object_109)

select
    o109.id as _id,
    o109.created,
    o109.updated,
    o109.field_1569,
    o109.created_at,
    o109.updated_at,
    o109._dlt_load_id,
    o109._dlt_id,
    false as deleted
from o109