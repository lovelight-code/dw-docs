with
o165 as (select * from landing_tracker.object_165)

select
    o165.id as _id,
    o165.created,
    o165.updated,
    o165.field_2363,
    o165.field_2362,
    o165.field_2364_date as field_2364,
    o165.field_2364_all_day as field_2364__all_day,
    o165.field_2365_street as field_2365__street,
    o165.field_2365_city as field_2365__city,
    o165.field_2365_state as field_2365__state,
    o165.field_2365_zip as field_2365__zip,
    o165.field_2365_full as field_2365__full,
    o165.created_at,
    o165.updated_at,
    o165._dlt_load_id,
    o165._dlt_id,
    o165.field_2365_street2 as field_2365__street2,
    o165.field_2430,
    false as deleted
from o165