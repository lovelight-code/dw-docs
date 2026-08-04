

SELECT
  s.*,
  DATE_TRUNC('month', CURRENT_DATE)::date AS snapshot_month
FROM "dw_dev"."consumption"."sales" s


WHERE DATE_TRUNC('month', CURRENT_DATE)::date NOT IN (
  SELECT DISTINCT snapshot_month FROM "dw_dev"."consumption"."sales_snapshots"
)
