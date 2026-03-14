-- =============================================
-- DESCRIPCIÓN: Clasificación de tipos de beneficiarios mediante lógica de nomenclatura interna.
-- CASO DE USO: Análisis de composición del núcleo familiar y asignación de roles.
-- TÉCNICAS: SUBSTRING, Lógica condicional anidada, Normalización de etiquetas.
-- =============================================

SELECT 
    SUBSTRING(clave_parentesco, 1, 1) AS tipo_id,
    genero,
    CASE
        WHEN SUBSTRING(clave_parentesco, 1, 1) = '1' AND genero = 'H' THEN 'Titular Masculino'
        WHEN SUBSTRING(clave_parentesco, 1, 1) = '1' AND genero = 'M' THEN 'Titular Femenino'
        WHEN SUBSTRING(clave_parentesco, 1, 1) = '2' AND genero = 'M' THEN 'Cónyuge Femenino'
        WHEN SUBSTRING(clave_parentesco, 1, 1) = '2' AND genero = 'H' THEN 'Cónyuge Masculino'
        WHEN SUBSTRING(clave_parentesco, 1, 1) = '3' AND genero = 'H' THEN 'Hijo'
        WHEN SUBSTRING(clave_parentesco, 1, 1) = '3' AND genero = 'M' THEN 'Hija'
        WHEN SUBSTRING(clave_parentesco, 1, 1) = '4' AND genero = 'M' THEN 'Madre'
        WHEN SUBSTRING(clave_parentesco, 1, 1) = '4' AND genero = 'H' THEN 'Padre'
        ELSE 'Otro / Sin información'
    END AS relacion_familiar,
    COUNT(*) AS total
FROM usuarios_adscritos
GROUP BY SUBSTRING(clave_parentesco, 1, 1), genero
ORDER BY total DESC;
