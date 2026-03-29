SELECT
    linea,
    tipo_transporte,
    COUNT(*) AS total_retrasos
FROM transporte_publico
WHERE LOWER(estado) IN ('retraso', 'retrasado', 'incidencia', 'averia')
GROUP BY linea, tipo_transporte
ORDER BY total_retrasos DESC;
