SELECT
    linea,
    SUM(pasajeros) AS total_pasajeros
FROM transporte_publico
GROUP BY linea
ORDER BY total_pasajeros DESC;
