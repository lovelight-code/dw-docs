with
o171 as (select * from landing_tracker.object_171),
o171f2456 as (select _dlt_parent_id, max(value) as field_2456 from landing_tracker.object_171__field_2456 group by 1),
o171f2457 as (select _dlt_parent_id, max(value) as field_2457 from landing_tracker.object_171__field_2457 group by 1)

select
    o171.id as _id,
    o171.created,
    o171.updated,
    o171.user_id,
    o171.utility_key,
    o171.approval_status,
    o171.account_status,
    o171.field_2453_first as field_2453__first,
    o171.field_2453_last as field_2453__last,
    o171.field_2453_full as field_2453__full,
    o171.field_2454_email as field_2454__email,
    o171.field_2455,
    o171.created_at,
    o171.updated_at,
    o171._dlt_load_id,
    o171._dlt_id,
    o171.field_2454_label as field_2454__label,
    o171f2456.field_2456,
    o171f2457.field_2457,
    false as deleted
from o171
left join o171f2456 on o171._dlt_id = o171f2456._dlt_parent_id
left join o171f2457 on o171._dlt_id = o171f2457._dlt_parent_id