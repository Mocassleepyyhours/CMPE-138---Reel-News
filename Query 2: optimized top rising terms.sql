SELECT DISTINCT term, rank, dma_name, refresh_date, score
FROM `bigquery-public-data.google_trends.top_rising_terms`
WHERE refresh_date = '2025-4-25'
  AND dma_name IN ('Los Angeles CA', 
    'San Francisco-Oakland-San Jose CA', 
    'Sacramento-Stockton-Modesto CA')
  AND rank < 15
  AND score > 80

ORDER BY score DESC, rank ASC
LIMIT 25;
