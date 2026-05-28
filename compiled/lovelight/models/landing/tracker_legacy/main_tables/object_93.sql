with
o93 as (select * from landing_tracker.object_93),
o93f1272 as (select _dlt_parent_id, max(value) as field_1272 from landing_tracker.object_93__field_1272 group by 1),
o93f1273 as (select _dlt_parent_id, max(value) as field_1273 from landing_tracker.object_93__field_1273 group by 1)

select
    o93.id as _id,
    o93.created,
    o93.updated,
    o93.user_id,
    o93.utility_key,
    o93.approval_status,
    o93.account_status,
    o93.field_1269_first as field_1269__first,
    o93.field_1269_full as field_1269__full,
    o93.field_1270_email as field_1270__email,
    o93.field_1271,
    o93.created_at,
    o93.updated_at,
    o93._dlt_load_id,
    o93._dlt_id,
    o93.field_1269_last as field_1269__last,
    o93.field_1270_label as field_1270__label,
    o93f1272.field_1272,
    o93f1273.field_1273,
    false as deleted
from o93
left join o93f1272 on o93._dlt_id = o93f1272._dlt_parent_id
left join o93f1273 on o93._dlt_id = o93f1273._dlt_parent_id