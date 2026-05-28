with
o36 as (select * from landing_tracker.object_36),
o36f377 as (select _dlt_parent_id, max(value) as field_377 from landing_tracker.object_36__field_377 group by 1),
o36f378 as (select _dlt_parent_id, max(value) as field_378 from landing_tracker.object_36__field_378 group by 1)

select
    o36.id as _id,
    o36.created,
    o36.updated,
    o36.user_id,
    o36.approval_status,
    o36.account_status,
    o36.field_374_first as field_374__first,
    o36.field_374_last as field_374__last,
    o36.field_374_full as field_374__full,
    o36.field_375_email as field_375__email,
    o36.field_376,
    o36.created_at,
    o36.updated_at,
    o36._dlt_load_id,
    o36._dlt_id,
    o36.utility_key,
    o36.field_375_label as field_375__label,
    o36f377.field_377,
    o36f378.field_378,
    false as deleted
from o36
left join o36f377 on o36._dlt_id = o36f377._dlt_parent_id
left join o36f378 on o36._dlt_id = o36f378._dlt_parent_id