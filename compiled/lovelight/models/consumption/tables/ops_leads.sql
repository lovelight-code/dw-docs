

-- TODO: Source from Portal (lovelight_portal schema in dw_dev) and Capture once landing
-- models are built for each system. Union both sources here with src_sys_cd to distinguish.
-- Expected columns align with the ops_opportunities shape (leads are pre-opportunity records).

select
    null::varchar       as lead_sk,
    null::varchar       as lead_id,
    null::varchar       as src_sys_cd,
    null::varchar       as src_sys_id,
    null::varchar       as lead_name,
    null::varchar       as status,
    null::varchar       as account,
    null::varchar       as contact,
    null::varchar       as state,
    null::varchar       as business_unit,
    null::varchar       as division,
    null::varchar       as sales_email,
    null::date          as created_date,
    null::date          as date_quoted,
    null::date          as date_closed,
    null::numeric       as value_ex_gst,
    null::varchar       as lost_reason,
    null::timestamp     as src_created_at,
    null::timestamp     as src_updated_at

where 1 = 0