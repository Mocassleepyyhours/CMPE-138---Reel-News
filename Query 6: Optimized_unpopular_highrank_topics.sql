SELECT term, country_name, rank, score
FROM `bigquery-public-data.google_trends.international_top_terms`
WHERE refresh_date = DATE '2025-04-30'
  AND score > 80
  AND rank > 15
ORDER BY score DESC
LIMIT 20
