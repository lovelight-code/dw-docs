with
o195 as (select * from landing_tracker.object_195),
o195f2805 as (select _dlt_parent_id, max(value) as field_2805 from landing_tracker.object_195__field_2805 group by 1),
o195f2806 as (select _dlt_parent_id, max(value) as field_2806 from landing_tracker.object_195__field_2806 group by 1)

select
    o195.id as _id,
    o195.created,
    o195.updated,
    o195.user_id,
    o195.approval_status,
    o195.account_status,
    o195.field_2802_first as field_2802__first,
    o195.field_2802_last as field_2802__last,
    o195.field_2802_full as field_2802__full,
    o195.field_2803_email as field_2803__email,
    o195.field_2804,
    o195.created_at,
    o195.updated_at,
    o195._dlt_load_id,
    o195._dlt_id,
    o195.utility_key,
    o195f2805.field_2805,
    o195f2806.field_2806,
    false as deleted
from o195
left join o195f2805 on o195._dlt_id = o195f2805._dlt_parent_id
left join o195f2806 on o195._dlt_id = o195f2806._dlt_parent_id