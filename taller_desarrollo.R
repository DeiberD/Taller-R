# ==============================================================================
# Introducción a la Probabilidad, Estadística y Programación con R
# Script de desarrollo (versión resuelta) — guía para quien facilita el taller
# Autor: Deiber Gongora
# ==============================================================================
#
# Este script sigue el mismo orden que la Planeación del taller (Actividades 1-8).
# Úsalo para proyectar en vivo y como respuesta de referencia frente a lo que
# vayan resolviendo los asistentes en su propio script (ver reto_asistentes.R).

# ------------------------------------------------------------------------------
# Actividad 2 | Probabilidad básica (+ contenido nuevo: simulación en R)
# ------------------------------------------------------------------------------
# Ejemplo clásico del dado, resuelto primero "a mano" y luego simulado.

# Espacio muestral
S <- 1:6
S

# Probabilidad teórica de "sacar par"
casos_favorables <- c(2, 4, 6)
p_teorica <- length(casos_favorables) / length(S)
p_teorica  # 0.5

# --- Nuevo: comprobar la probabilidad simulando el experimento muchas veces ---
# Esto conecta la teoría de la Actividad 2 con la práctica en R, antes de
# llegar a la Actividad 4 (Primeros pasos con R).
set.seed(1)
lanzamientos <- sample(1:6, size = 1000, replace = TRUE)
p_empirica <- mean(lanzamientos %% 2 == 0)
p_empirica  # debería acercarse a 0.5

# Mostrar cómo se acerca a la probabilidad teórica al aumentar los lanzamientos
n_lanz <- c(10, 100, 1000, 10000)
resultados <- sapply(n_lanz, function(n) {
  mean(sample(1:6, size = n, replace = TRUE) %% 2 == 0)
})
data.frame(n_lanz, resultados)

# ------------------------------------------------------------------------------
# Actividad 4 | Primeros pasos con R
# ------------------------------------------------------------------------------
edad <- 20
nombre <- "Ana"

edad
nombre

2 + 3 * 4
sqrt(16)
log(10)

# install.packages("ggplot2")  # solo si no está instalado
# library(ggplot2)

# ------------------------------------------------------------------------------
# Actividad 5 | Datos en R
# ------------------------------------------------------------------------------
# Vector simple para introducir la idea antes de pasar al data frame real.
notas_ejemplo <- c(3.5, 4.2, 2.8, 4.8)
notas_ejemplo

# c(1, "a") convierte todo a texto (mezclar tipos)
c(1, "a")

# --- Dataset del taller: encuesta_taller.csv ---
# Recuerda fijar el directorio de trabajo: Session > Set Working Directory
datos <- read.csv("encuesta_taller.csv", encoding = "UTF-8")

head(datos)
str(datos)
nrow(datos)

# ------------------------------------------------------------------------------
# Actividad 6 | Estadística descriptiva
# ------------------------------------------------------------------------------
# Medidas de tendencia central sobre la nota
mean(datos$nota_estadistica)
median(datos$nota_estadistica)

# Medidas de dispersión
range(datos$nota_estadistica)
var(datos$nota_estadistica)
sd(datos$nota_estadistica)
IQR(datos$nota_estadistica)

# Atajo
summary(datos$nota_estadistica)

# Moda (R no trae función nativa)
tabla_notas <- table(datos$nota_estadistica)
names(which.max(tabla_notas))

# --- Nuevo: tabla cruzada (dos variables cualitativas) ---
# Útil para retomar la clasificación de variables de la Actividad 3.
table(datos$transporte, datos$uso_R_antes)

# ------------------------------------------------------------------------------
# Actividad 7 | Visualización de datos (+ contenido nuevo: correlación)
# ------------------------------------------------------------------------------
hist(datos$nota_estadistica,
     main = "Distribución de la nota de estadística",
     xlab = "Nota", col = "skyblue")

boxplot(datos$nota_estadistica,
        main = "Nota de estadística",
        ylab = "Nota", col = "lightgreen")

barplot(table(datos$transporte),
        main = "Medio de transporte de los asistentes",
        xlab = "Transporte", col = "coral")

# --- Nuevo: ¿hay relación entre horas de estudio y la nota? ---
# Introduce el scatterplot y una primera idea de correlación,
# preparando el terreno para cursos posteriores de estadística.
plot(datos$horas_estudio_semana, datos$nota_estadistica,
     main = "Horas de estudio vs. nota de estadística",
     xlab = "Horas de estudio por semana", ylab = "Nota",
     pch = 19, col = "darkblue")

cor(datos$horas_estudio_semana, datos$nota_estadistica)

# ==============================================================================
# Fin del desarrollo. Ver reto_asistentes.R para la versión que se comparte
# con el grupo (mismos pasos, celdas en blanco para completar en vivo).
# ==============================================================================
