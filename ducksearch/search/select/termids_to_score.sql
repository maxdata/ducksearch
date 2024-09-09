WITH _terms_to_score AS (
    SELECT 
        term
    FROM fts_{schema}__documents.dict 
    WHERE df < {max_df}
)

SELECT 
    d.termid
FROM _terms_to_score t
JOIN {schema}.dict d
ON t.term = d.term
ORDER BY RANDOM();