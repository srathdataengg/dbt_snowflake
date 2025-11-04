with src_scores as (
    select * from {{ ref('src_genome_score')}}
)

select
    movie_id,
    tag_id,
    ROUND(relevance, 4) as relevance_score
FROM src_scores
WHERE relevance > 0