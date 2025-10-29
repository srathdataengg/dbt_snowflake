with raw_genome_scores AS (
    SELECT * FROM MOVIELENS.RAW.RAW_GENOME_SCORES
)

SELECT
    movieId AS movie_id,
    tagId as tag_id,
    relevance
   from raw_genome_scores