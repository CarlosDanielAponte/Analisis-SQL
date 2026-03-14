-- =============================================
-- DESCRIPCIÓN: Algoritmo de vinculación de registros basado en atributos personales.
-- CASO DE USO: Consolidación de identidades entre bases de datos sin llave primaria común.
-- TÉCNICAS: Limpieza de strings (LTRIM, RTRIM), Casting de tipos de datos, Joins multivariable.
-- =============================================

UPDATE p
SET 
    p.id_vinculacion = m.ID,
    p.metodo_validacion = 4
FROM maestro_usuarios p
JOIN servicios_historico m
ON LTRIM(RTRIM(p.NOMBRE)) = LTRIM(RTRIM(m.nombre_usuario))
    AND LTRIM(RTRIM(p.AP_PATERNO)) = LTRIM(RTRIM(m.primer_apellido))
    AND LTRIM(RTRIM(p.AP_MATERNO)) = LTRIM(RTRIM(m.segundo_apellido))
    AND CAST(LTRIM(RTRIM(p.FECHA_NACIMIENTO)) AS DATE) = CAST(LTRIM(RTRIM(m.fec_nacimiento)) AS DATE)
WHERE p.id_vinculacion IS NULL;
