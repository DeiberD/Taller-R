# Introducción a la Probabilidad, Estadística y Programación con R

Repositorio de desarrollo del taller dirigido a estudiantes de primeros
semestres de la Facultad de Ingeniería de la Universidad Nacional de
Colombia, sede Bogotá, en el marco del programa de tutorías **GEA
Diversificación**.

## Contenido del repositorio

| Archivo | Descripción |
|---|---|
| `taller_desarrollo.R` | Script resuelto — la referencia que usa quien facilita el taller para proyectar y comparar con lo que resuelven los asistentes. |
| `reto_asistentes.R` | Versión en blanco del mismo script, para compartir con el grupo y que la completen en vivo. |
| `encuesta_taller.csv` | Dataset sintético (120 filas) usado en las actividades de datos, estadística descriptiva y visualización. |
| `README.md` | Este archivo. |

## Dataset: `encuesta_taller.csv`

Datos sintéticos de una encuesta ficticia a 120 estudiantes, pensados para
parecerse al propio grupo de asistentes del taller:

| Variable | Tipo | Descripción |
|---|---|---|
| `id` | — | Identificador |
| `programa` | Cualitativa nominal | Programa académico |
| `semestre` | Cuantitativa discreta | Semestre que cursa |
| `edad` | Cuantitativa discreta | Edad en años |
| `uso_R_antes` | Cualitativa nominal | Si ha usado R o RStudio antes (Sí/No) |
| `horas_estudio_semana` | Cuantitativa continua | Horas de estudio autónomo por semana |
| `transporte` | Cualitativa nominal | Medio de transporte principal |
| `nota_estadistica` | Cuantitativa continua | Nota (escala 0.0–5.0) |

`horas_estudio_semana` y `nota_estadistica` tienen una correlación positiva
moderada generada a propósito, para que el scatterplot y `cor()` de la
Actividad 7 muestren una relación visible.

> El dataset es sintético (generado con semilla fija para reproducibilidad),
> no corresponde a estudiantes reales.

## Cómo usarlo

1. Clona o descarga el repositorio.
2. Abre el proyecto en RStudio y fija el directorio de trabajo en la carpeta
   del repositorio (`Session > Set Working Directory > To Source File
   Location`).
3. Comparte `reto_asistentes.R` y `encuesta_taller.csv` con los asistentes
   antes de iniciar (Actividad 5 de la planeación).
4. Sigue `taller_desarrollo.R` como guía durante la sesión.

## Estructura del taller

El desarrollo sigue las 8 actividades de la Planeación del taller:

1. Rompehielos e introducción
2. Probabilidad básica *(+ simulación del dado con `sample()`)*
3. Estadística básica (población, muestra, tipos de variable)
4. Primeros pasos con R
5. Datos en R (vectores, data frames, `read.csv()`)
6. Estadística descriptiva *(+ tabla cruzada)*
7. Visualización de datos *(+ dispersión y correlación con `plot()`/`cor()`)*
8. Cierre y preguntas

## Créditos

Deiber Gongora — Tutor, GEA Diversificación (Programación y Analítica de
Datos), Universidad Nacional de Colombia, sede Bogotá.
