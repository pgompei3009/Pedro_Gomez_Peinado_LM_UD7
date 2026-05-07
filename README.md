# Conversión y adaptación de documentos

## Descripción

Esta práctica trata sobre la conversión y adaptación de documentos utilizando diferentes tecnologías de Lenguaje de Marcas.  
La temática elegida ha sido la discografía del grupo de rock español Extremoduro, utilizando información sobre sus canciones, discos e integrantes.

El objetivo principal ha sido trabajar con distintos formatos de datos y transformarlos para su visualización en HTML.

---

## Partes realizadas

### 1. Conversión de XML a JSON

Se partió de un archivo XML que contenía información de la discografía de Extremoduro.

Posteriormente, se convirtió la estructura XML a formato JSON manteniendo toda la información de:

- Título de la canción
- Disco
- Año de publicación
- Discográfica
- Duración
- Integrantes y roles

---

### 2. Conversión de XML a HTML mediante XSLT

Se creó una plantilla XSLT para transformar automáticamente el archivo XML en una página HTML.

La transformación muestra:

- Información de las canciones
- Datos del disco
- Duración
- Integrantes de cada canción

Además, se añadieron estilos CSS para mejorar la presentación visual.

---

### 3. Conversión de JSON a HTML mediante JavaScript

Finalmente, se utilizó JavaScript para cargar dinámicamente el archivo JSON y generar el contenido HTML.

Para ello se emplearon:

- `fetch()` para leer el archivo JSON
- Manipulación del DOM
- Creación dinámica de tarjetas HTML para cada canción

El resultado es una página web dinámica que muestra toda la discografía de forma organizada.

---

## Tecnologías utilizadas

- XML
- JSON
- XSLT
- HTML5
- CSS3
- JavaScript