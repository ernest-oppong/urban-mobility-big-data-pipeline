SELECT
    zona,
    congestion_level,
    COUNT(*) AS total_registros
FROM movilidad
GROUP BY zona, congestion_level
ORDER BY zona, total_registros DESC;
