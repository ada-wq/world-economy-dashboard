SELECT 
  indicator_key,
  country_code,
  NULL AS country_name,
  NULL AS region,
  NULL AS income_group,
  EXTRACT(YEAR FROM PARSE_DATE('%Y-%m-%d', period_date)) AS period_year,
  value,
  data_source,
  last_updated_at
FROM {{ ref('stg_fred') }}
