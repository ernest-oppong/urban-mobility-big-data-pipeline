SELECT
    sensor_id,
    ROUND(AVG(velocidad_detectada), 2) AS velocidad_promedio
FROM sensores_trafico
GROUP BY sensor_id
ORDER BY velocidad_promedio ASC;
