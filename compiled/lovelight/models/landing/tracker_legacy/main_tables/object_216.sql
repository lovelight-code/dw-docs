with
o216 as (select * from landing_tracker.object_216)

select
    o216.id as _id,
    o216.created,
    o216.updated,
    o216.field_3123,
    o216.field_3126_email as field_3126__email,
    o216.field_3126_label as field_3126__label,
    o216.field_3127_url as field_3127__url,
    o216.field_3128,
    o216.created_at,
    o216.updated_at,
    o216._dlt_load_id,
    o216._dlt_id,
    o216.field_3124,
    o216.field_3125_date as field_3125,
    o216.field_3125_all_day as field_3125__all_day,
    o216.field_3129,
    false as deleted
from o216