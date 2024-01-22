WITH total_avg_month AS (
    SELECT
    city, country, month, lat, lon,
    avg(avgtemp_c) as avg_temp_month,
    max(maxtemp_c) as max_temp_month,
    min(mintemp_c) as min_temp_month
    from {{ref("prep_temp")}}
    group by city, country, month, lat, lon)
SELECT * from total_avg_month