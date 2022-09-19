# Clase Semana 4 Dia 2
# Metodos estadisticos 
# Fili lozoya ojeda
# 21/08/2022

Entrevistas <- read.csv("Clases/Encuesta_codificada.csv", header = T)



# Entrevistadores ---------------------------------------------------------


# Convertir Variable a Factor ---------------------------------------------

Entrevistas$Entrev <- as.factor(Entrevistas$Entrev)
Entrevistas$oi_2a <- as.factor(Entrevistas$oi_2a)
Entrevistas$oi_4a <- as.factor(Entrevistas$oi_4a)
levels(Entrevistas$Entrev)


# Revisar si son Factores -------------------------------------------------

Entrevistas$Genero <- as.factor(Entrevistas$Genero)
levels(Entrevistas$Genero)
Entrevistas$Carrera <- as.factor(Entrevistas$Semestre)
levels(Entrevistas$Semestre)

# Funcion para transformar daracteres en fechas ---------------------------

Entrevistas$Fecha <- as.Date(Entrevistas$Fecha, "%d/%m/&y")
library(lubridate)
Entrevistas$Fecha <- as.Date(Entrevistas$Fecha)

# Queda pendiente---- Entrevistas$Fecha <- as.date(Entrevistas$Fecha)

# ¿Cual fue el porcentajede entrevistados por genero?

gen <- table(Entrevistas$Genero)
round(gen/length(Entrevistas$Genero)*100, 1)
nfffbgb
