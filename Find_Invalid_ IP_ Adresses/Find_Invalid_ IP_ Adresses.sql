WITH Extracted AS (
    SELECT ip,
        SUBSTRING_INDEX(ip, '.', 1) AS o1,
        SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 2), '.', -1) AS o2,
        SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 3), '.', -1) AS o3,
        SUBSTRING_INDEX(ip, '.', -1) AS o4
    FROM logs
)
SELECT ip, COUNT(*) AS invalid_count
FROM Extracted
WHERE 
    LENGTH(ip) - LENGTH(REPLACE(ip, '.', '')) != 3
    OR    ip REGEXP '\\.0[0-9]'
    OR
    CAST(o1 AS UNSIGNED) > 255 OR 
    CAST(o2 AS UNSIGNED) > 255 OR 
    CAST(o3 AS UNSIGNED) > 255 OR 
    CAST(o4 AS UNSIGNED) > 255
GROUP BY ip
ORDER BY invalid_count DESC, ip DESC;