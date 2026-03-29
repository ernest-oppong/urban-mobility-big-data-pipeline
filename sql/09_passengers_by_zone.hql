SELECT
    zona,
    SUM(pasajeros) AS total_pasajeros
FROM transporte_publico
GROUP BY zona
ORDER BY total_pasajeros DESC;
