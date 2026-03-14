-- =============================================
-- DESCRIPCIÓN: Análisis de distribución poblacional por rangos de edad y género.
-- CASO DE USO: Identificación de perfiles de usuario para planeación de servicios.
-- TÉCNICAS: CASE Statements, Agregaciones (COUNT), Lógica condicional.
-- =============================================

SELECT 
    CASE 
        WHEN edad BETWEEN 0 AND 4 THEN '0-4'
        WHEN edad BETWEEN 5 AND 14 THEN '5-14'
        WHEN edad BETWEEN 15 AND 24 THEN '15-24'
        WHEN edad BETWEEN 25 AND 44 THEN '25-44'
        WHEN edad BETWEEN 45 AND 64 THEN '45-64'
        ELSE '65+'
    END AS rango_edad,
    genero,
    COUNT(*) AS total_registros
FROM servicios_usuarios
GROUP BY 
    CASE 
        WHEN edad BETWEEN 0 AND 4 THEN '0-4'
        WHEN edad BETWEEN 5 AND 14 THEN '5-14'
        WHEN edad BETWEEN 15 AND 24 THEN '15-24'
        WHEN edad BETWEEN 25 AND 44 THEN '25-44'
        WHEN edad BETWEEN 45 AND 64 THEN '45-64'
        ELSE '65+'
    END,
    genero
ORDER BY rango_edad, genero;
