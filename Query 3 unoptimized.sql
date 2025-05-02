WITH scored_terms AS (
  SELECT
    *,
    LAG(score) OVER (PARTITION BY term ORDER BY week) AS previous_score
  FROM bigquery-public-data.google_trends.top_terms
  WHERE dma_id = 807
    AND week >= DATE_SUB(CURRENT_DATE(), INTERVAL 4 WEEK)
)

SELECT
  *,
  (score - previous_score) AS score_gain
FROM scored_terms
WHERE previous_score IS NOT NULL
ORDER BY score_gain DESC
LIMIT 10;