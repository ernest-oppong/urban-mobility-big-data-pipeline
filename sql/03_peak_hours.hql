SELECT
    SUBSTR(ts, 12, 2) AS hora,
    COUNT(*) AS total_registros
FROM movilidad
GROUP BY SUBSTR(ts, 12, 2)
ORDER BY hora;
