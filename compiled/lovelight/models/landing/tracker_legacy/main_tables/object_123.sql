with
o123 as (select * from landing_tracker.object_123)

select
    o123.id as _id,
    o123.created,
    o123.updated,
    o123.field_1788,
    o123.field_1789,
    o123.field_1790,
    o123.field_1797,
    o123.field_1798,
    o123.field_1799,
    o123.created_at,
    o123.updated_at,
    o123._dlt_load_id,
    o123._dlt_id,
    false as deleted
from o123