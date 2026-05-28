

select distinct
    oh_and_s_tool_box_talk_id,
    state_division_id
from "dw_dev"."landing_tracker"."ln_br_oh_and_s_tool_box_talk_state_division"
where oh_and_s_tool_box_talk_id is not null
  and state_division_id is not null