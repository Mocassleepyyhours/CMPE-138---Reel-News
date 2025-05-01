SELECT DISTINCT week, term, percent_gain, dma_name
FROM
  `bigquery-public-data.google_trends.top_rising_terms`
WHERE
  term = 'sydney sweeney'
  AND dma_name = 'Baltimore MD'
ORDER BY week
LIMIT 15;
