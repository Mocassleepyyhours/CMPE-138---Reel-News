SELECT week, term, percent_gain, dma_name
FROM `bigquery-public-data.google_trends.top_rising_terms`
WHERE term = 'sydney sweeney'
  AND dma_name = 'Baltimore MD'
GROUP BY week, term, percent_gain, dma_name
LIMIT 15;
