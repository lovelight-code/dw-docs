-- ============================================================
-- Model: ln_quoterite_completed_ticket
-- Description: Landing-layer view that flattens object_216
--              and its subtables into one record per quoterite_completed_ticket.
-- Auto-generated from tracker_canonical_latest.json
-- ============================================================

with
-- ------------------------------------------------------------
-- Base: main Knack object_216 table
-- ------------------------------------------------------------
o216 as (
    select *
    from landing_tracker.object_216
)

-- ------------------------------------------------------------
-- Final select: join all flattened subtables
-- ------------------------------------------------------------
select
    o216.id,
    o216.created as src_created_at,
    o216.updated as src_updated_at,
    o216.field_3123 as task,
    o216.field_3124 as description,
    o216.field_3125_all_day as date_completed_all_day,
    o216.field_3125_date as date_completed_date,
    o216.field_3126_email as assignee_email,
    o216.field_3126_label as assignee_label,
    o216.field_3127_url as slack_message_url,
    o216.field_3128 as division,
    o216.field_3129 as email_subject,
    o216._dlt_id as dlt_id,
    o216._dlt_load_id as dlt_load_id,
    o216.created_at as created_at,
    o216.updated_at as updated_at
from o216