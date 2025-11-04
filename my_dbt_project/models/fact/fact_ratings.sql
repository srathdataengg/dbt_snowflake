{{
    config(
        materialized = 'incremental',
        on_schema_change='fail'
        )
}}

with src_ratings as (
 SELECT * FROM {{ref('src_ratings')}}
 )

 select user_id,
        movie_id,
        rating,
        rating_timestamp
 FROM src_ratings
 where rating is not null

 {% if is_incremental() %}
    AND rating_timestamp > (select max(rating_timestamp) FROM {{this}})
 {%endif%}