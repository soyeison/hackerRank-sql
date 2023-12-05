WITH temporal AS (
    SELECT
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) as rn
    FROM STATION
)
SELECT 
    ROUND(LAT_N ,4) AS median
FROM temporal
WHERE rn = (
    SELECT 
        (COUNT(LAT_N)+1)/2
    FROM STATION
);