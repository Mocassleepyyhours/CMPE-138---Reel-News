SELECT term, country_name, rank, score
FROM `bigquery-public-data.google_trends.international_top_terms`
WHERE refresh_date = '2025-04-30'
  AND rank > 15
  AND score > 80
ORDER BY score DESC
LIMIT 20;
