with
o118 as (select * from landing_tracker.object_118),
o118f1737 as (select _dlt_parent_id, max(value) as field_1737 from landing_tracker.object_118__field_1737 group by 1),
o118f1738 as (select _dlt_parent_id, max(value) as field_1738 from landing_tracker.object_118__field_1738 group by 1)

select
    o118.id as _id,
    o118.created,
    o118.updated,
    o118.user_id,
    o118.utility_key,
    o118.approval_status,
    o118.account_status,
    o118.field_1734_first as field_1734__first,
    o118.field_1734_last as field_1734__last,
    o118.field_1734_full as field_1734__full,
    o118.field_1735_email as field_1735__email,
    o118.field_1736,
    o118.created_at,
    o118.updated_at,
    o118._dlt_load_id,
    o118._dlt_id,
    o118.field_1735_label as field_1735__label,
    o118f1737.field_1737,
    o118f1738.field_1738,
    false as deleted
from o118
left join o118f1737 on o118._dlt_id = o118f1737._dlt_parent_id
left join o118f1738 on o118._dlt_id = o118f1738._dlt_parent_id