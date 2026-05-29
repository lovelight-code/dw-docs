

SELECT
  s.*,
  DATE_TRUNC('month', CURRENT_DATE)::date AS snapshot_month
FROM "dw_dev"."consumption"."sales" s

