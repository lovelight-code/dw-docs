with
o202 as (select * from landing_tracker.object_202)

select
    o202.id as _id,
    o202.created,
    o202.updated,
    o202.field_2927,
    o202.field_2926,
    o202.field_2928_date as field_2928,
    o202.field_2928_all_day as field_2928__all_day,
    o202.field_2929_date as field_2929,
    o202.field_2929_all_day as field_2929__all_day,
    o202.field_2930_date as field_2930,
    o202.field_2930_all_day as field_2930__all_day,
    o202.created_at,
    o202.updated_at,
    o202._dlt_load_id,
    o202._dlt_id,
    o202.field_2966,
    false as deleted
from o202