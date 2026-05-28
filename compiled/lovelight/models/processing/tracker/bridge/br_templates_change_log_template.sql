

select distinct
    templates_change_log_id,
    template_id
from "dw_dev"."landing_tracker"."ln_br_templates_change_log_template"
where templates_change_log_id is not null
  and template_id is not null