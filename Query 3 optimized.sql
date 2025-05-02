WITH filtered_terms AS (
  SELECT
    term,
    week,
    score
  FROM bigquery-public-data.google_trends.top_terms
  WHERE dma_id = 807
    AND week >= DATE_SUB(CURRENT_DATE(), INTERVAL 4 WEEK)
    AND rank <= 30  -- only focus on top-ranked terms
),

scored_terms AS (
  SELECT
    term,
    week,
    score,
    LAG(score) OVER (PARTITION BY term ORDER BY week) AS previous_score
  FROM filtered_terms
)

SELECT
  term,
  week,
  score,
  previous_score,
  (score - previous_score) AS score_gain
FROM scored_terms
WHERE previous_score IS NOT NULL
  AND score - previous_score > 0
ORDER BY score_gain DESC
LIMIT 10;