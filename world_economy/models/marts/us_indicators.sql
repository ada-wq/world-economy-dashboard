SELECT
  period_date,
  indicator_key,
  value,
  data_source,
  last_updated_at
FROM {{ ref('stg_fred') }}
WHERE country_code = 'US'
  AND indicator_key IN ('us_unemployment', 'fed_funds_rate', 'us_10y_treasury')
ORDER BY period_date DESC
