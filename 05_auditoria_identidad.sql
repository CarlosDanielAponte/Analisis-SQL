-- =============================================
-- DESCRIPCIÓN: Validación de integridad entre identificador único (CURP) y fecha de nacimiento.
-- CASO DE USO: Detección de errores de captura y duplicidad de registros institucionales.
-- TÉCNICAS: Manipulación de strings, TRY_CAST, Validación cruzada de campos.
-- =============================================

SELECT 
    id_seguro, 
    identificador_curp, 
    SUBSTRING(identificador_curp, 5, 2) AS anio_curp,
    COUNT(*) AS total_duplicados
FROM maestro_usuarios
WHERE fecha_nacimiento = TRY_CAST(
    '20' + SUBSTRING(identificador_curp, 5, 2) + '-' + 
           SUBSTRING(identificador_curp, 7, 2) + '-' + 
           SUBSTRING(identificador_curp, 9, 2) 
    AS DATE)
GROUP BY id_seguro, identificador_curp
HAVING COUNT(*) > 1
ORDER BY total_duplicados DESC;
