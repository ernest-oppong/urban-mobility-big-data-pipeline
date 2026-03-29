SELECT
    m.zona,
    COUNT(*) AS registros_congestion_alta,
    SUM(t.pasajeros) AS total_pasajeros_transporte
FROM movilidad m
JOIN transporte_publico t
    ON m.zona = t.zona
WHERE m.congestion_level = 'alto'
GROUP BY m.zona
ORDER BY registros_congestion_alta DESC;
