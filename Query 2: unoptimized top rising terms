SELECT DISTINCT term, rank, dma_name, refresh_date
FROM `bigquery-public-data.google_trends.top_rising_terms`
WHERE refresh_date = '2025-4-25'
  AND dma_name IN ('Los Angeles CA', 'San Francisco-Oakland-San Jose CA', 'Sacramento-Stockton-Modesto CA')
ORDER BY rank ASC
LIMIT 25;
