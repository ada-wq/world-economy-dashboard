SELECT
  series_name AS indicator_key,
  country_code,
  date AS period_date,
  value,
  'fred' AS data_source,
  ingested_at,
  processed_at AS last_updated_at
FROM {{ source('raw', 'fred_stream') }}
WHERE is_valid = TRUE AND value IS NOT NULL
