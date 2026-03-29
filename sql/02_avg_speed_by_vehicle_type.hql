SELECT
    vehicle_type,
    ROUND(AVG(velocidad_kmh), 2) AS velocidad_media
FROM movilidad
GROUP BY vehicle_type
ORDER BY velocidad_media DESC;
