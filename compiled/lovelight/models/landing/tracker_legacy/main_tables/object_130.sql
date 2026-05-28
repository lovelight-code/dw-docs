with
o130 as (select * from landing_tracker.object_130)

select
    o130.id as _id,
    o130.created,
    o130.updated,
    o130.field_1888,
    o130.field_1899,
    o130.field_1894_date as field_1894,
    o130.field_1894_all_day as field_1894__all_day,
    o130.field_1895,
    o130.created_at,
    o130.updated_at,
    o130._dlt_load_id,
    o130._dlt_id,
    o130.field_2630,
    o130.field_1896,
    false as deleted
from o130