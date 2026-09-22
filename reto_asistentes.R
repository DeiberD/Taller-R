# ==============================================================================
# Introducción a la Probabilidad, Estadística y Programación con R
# Script del taller — complétalo junto con el facilitador
# ==============================================================================
#
# No te preocupes si te quedas atrás en algún punto: al final se comparte
# el script resuelto (taller_desarrollo.R) para que compares tu solución.

# ------------------------------------------------------------------------------
# Actividad 2 | Probabilidad básica: simulando el dado
# ------------------------------------------------------------------------------
# Espacio muestral: S <- 1:6

S <- ____

# Probabilidad teórica de "sacar par" (casos favorables / casos posibles)


# Simula 1000 lanzamientos con sample() y calcula la proporción de pares
set.seed(1)
lanzamientos <- sample(____, size = ____, replace = TRUE)


# ------------------------------------------------------------------------------
# Actividad 4 | Primeros pasos con R
# ------------------------------------------------------------------------------
# Crea las variables edad y nombre con tus propios datos


# Ejecuta: 2 + 3 * 4,  sqrt(16),  log(10)


# ------------------------------------------------------------------------------
# Actividad 5 | Datos en R
# ------------------------------------------------------------------------------
# Crea un vector con 4 notas cualquiera


# Importa el dataset del taller (recuerda fijar el directorio de trabajo)
datos <- read.csv("____")

# Explora los datos: head(), str(), nrow()


# ------------------------------------------------------------------------------
# Actividad 6 | Estadística descriptiva
# ------------------------------------------------------------------------------
# Calcula media y mediana de datos$nota_estadistica


# Calcula range(), var(), sd() e IQR()


# ¿Qué te dice summary(datos$nota_estadistica)?


# Bonus: construye una tabla cruzada entre transporte y uso_R_antes


# ------------------------------------------------------------------------------
# Actividad 7 | Visualización de datos
# ------------------------------------------------------------------------------
# Histograma de la nota


# Boxplot de la nota


# Gráfico de barras del transporte


# Bonus: ¿hay relación entre horas de estudio y la nota?
# Usa plot() y luego cor() para confirmarlo


# ==============================================================================
# ¡Listo! Compara tu script con taller_desarrollo.R
# ==============================================================================
