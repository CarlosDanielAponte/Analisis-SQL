-- =============================================
-- DESCRIPCIÓN: Proceso de inserción y normalización de datos para tablas de beneficiarios.
-- CASO DE USO: Migración de datos desde tablas temporales a esquemas productivos.
-- TÉCNICAS: INSERT INTO SELECT, Transformación de etiquetas, Mapeo de columnas.
-- =============================================

INSERT INTO beneficiarios_sistema (
    identificador_unico,
    clave_parentesco,
    documento_id,
    rol_familiar,
    nombre,
    paterno,
    materno,
    fecha_nacimiento,
    genero,
    estatus_registro
)
SELECT 
    ID_USUARIO,
    CLAVE_FAMILIAR,
    CURP_VALIDADA,
    'Familiar Directo',
    NOMBRE_USUARIO,
    APELLIDO_P,
    APELLIDO_M,
    FECHA_NAC,
    GENERO_REF,
    'Activo'
FROM registros_temporales;
