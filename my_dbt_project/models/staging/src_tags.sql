{{config(materialized = 'table') }}

WITH raw_tags AS (
    SELECT * FROM movielens.raw.raw_tags
)

select
    userId as user_id,
    movieId as movie_id,
    tag,
    TO_TIMESTAMP_LTZ(timestamp) as tag_timestamp
from raw_tags