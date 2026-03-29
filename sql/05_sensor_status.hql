SELECT
    estado_sensor,
    COUNT(*) AS total_registros
FROM sensores_trafico
GROUP BY estado_sensor
ORDER BY total_registros DESC;
