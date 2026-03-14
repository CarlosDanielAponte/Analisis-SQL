-- =============================================
-- DESCRIPCIÓN: Implementación de la Fórmula de Haversine para distancias geográficas.
-- CASO DE USO: Cálculo de distancia lineal (km) entre puntos de origen y sedes de servicio.
-- TÉCNICAS: Funciones trigonométricas (ASIN, SIN, COS, RADIANS), Operaciones geoespaciales.
-- =============================================

UPDATE registros_eventos
SET distancia_km = 
    6371 * 2 * ASIN(
        SQRT(
            POWER(SIN(RADIANS((lat_destino - lat_origen) / 2)), 2) +
            COS(RADIANS(lat_origen)) * COS(RADIANS(lat_destino)) *
            POWER(SIN(RADIANS((lon_destino - lon_origen) / 2)), 2)
        )
    );
