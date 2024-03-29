WITH temp_daily AS (
    SELECT *
    FROM {{ref('staging_weather')}}
),
add_weekday AS (
    SELECT *,
        date_part('day',date) AS weekday,
        date_part('dow',date) AS day_num,
        date_part('week',date) AS week,
        date_part('month',date) AS month
    FROM temp_daily
)
SELECT *
FROM add_weekday