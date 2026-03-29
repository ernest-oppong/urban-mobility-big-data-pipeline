SELECT
    zona,
    SUM(vehiculos_detectados) AS total_vehiculos
FROM sensores_trafico
GROUP BY zona
ORDER BY total_vehiculos DESC;
