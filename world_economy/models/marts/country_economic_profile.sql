SELECT
  country_code,
  period_year,
  MAX(CASE WHEN indicator_key = 'us_unemployment' THEN value END) AS unemployment_pct,
  MAX(CASE WHEN indicator_key = 'fed_funds_rate' THEN value END) AS fed_funds_rate,
  MAX(CASE WHEN indicator_key = 'us_10y_treasury' THEN value END) AS us_10y_treasury
FROM {{ ref('int_indicators_enriched') }}
GROUP BY country_code, period_year
ORDER BY period_year DESC
