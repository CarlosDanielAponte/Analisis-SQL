# Analisis-SQL

# Análisis de Datos Masivos - Sector Público 📊
**Por: Carlos Daniel Aponte** *Ingeniero en Computación | UNAM FES Aragón*

Este repositorio documenta mi trabajo en el análisis y procesamiento de datos institucionales a gran escala, basado en mi experiencia técnica en el sector salud (IMSS). El objetivo es demostrar la capacidad de transformar bases de datos complejas en reportes estratégicos para la toma de decisiones a nivel nacional.

**Nota de Confidencialidad y Ética de Datos:** Los scripts contenidos en este repositorio han sido sometidos a un proceso de anonimización y limpieza. Se han modificado los nombres de tablas, variables y registros para proteger la integridad y privacidad de la estructura institucional original, manteniendo intacta la lógica de programación, la complejidad de las consultas y la arquitectura de datos.

---

## 📂 Proyectos y Scripts Destacados

### 1. Extracción y Consolidación Nacional
*Scripts enfocados en unificar información de las 32 entidades federativas.*
* **Consultas Multi-nivel:** Implementación de `INNER JOIN` y `LEFT JOIN` para relacionar catálogos institucionales con datos operativos de derechohabientes.
* **Estandarización:** Procesos SQL para homologar formatos de fecha, nombres y claves únicas (UID) provenientes de diferentes fuentes.

### 2. Reporteo y Métricas de Desempeño
*Automatización de reportes para el seguimiento de servicios institucionales.*
* **Análisis de Tendencias:** Uso de `GROUP BY` y funciones de agregación para calcular promedios, máximos y mínimos por región y periodo.
* **Ranking y Segmentación:** Aplicación de `RANK()` y `PARTITION BY` para identificar las unidades con mayor demanda de servicios.

### 3. Optimización para Grandes Volúmenes
*Mejora del rendimiento en entornos de alta concurrencia.*
* **Indices y Plan de Ejecución:** Análisis de scripts para reducir el tiempo de respuesta en consultas críticas (reducción de *Table Scans*).
* **Vistas y Procedimientos:** Creación de objetos SQL para simplificar el acceso a la información por parte de otros analistas.

---

## 🛡️ Protocolo de Privacidad y Anonimización
En cumplimiento con las normativas de protección de datos personales y seguridad de la información:
1. **Nombres de Tablas:** Han sido modificados.
2. **Campos Sensibles:** Cualquier identificador personal ha sido reemplazado por identificadores genéricos o eliminado.
3. **Lógica Técnica:** Los scripts conservan la arquitectura lógica y la complejidad técnica original, pero operan sobre un esquema de datos "dummy" o anonimizado.

---

## 📈 Impacto Profesional
Mi enfoque principal es asegurar la **integridad de los datos** y reducir la brecha entre la base de datos cruda y el reporte final (Power BI / Excel), garantizando que la información sea veraz para la auditoría y la gestión pública.

---
