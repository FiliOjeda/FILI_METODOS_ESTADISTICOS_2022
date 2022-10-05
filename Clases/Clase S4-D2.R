Entrevista <- read.csv("Entrevista_codificada.csv", header = T)

Entrevista$Entrev <- as.factor(Entrevista$Entrev)
levels(Entrevista$Entrev)

Entrevista$Carrera <- as.factor(Entrevista$Carrera)
levels(Entrevista$Carrera)

Entrevista$Genero <- as.factor(Entrevista$Genero)
levels(Entrevista$Genero)

# Función para transformar carácteres a fechas

library(lubridate)
Entrevista$Fecha <- as.Date(Entrevista$Fecha)

# ¿Cuál fu el porcentaje de entrevistados por género?
gen <- table(Entrevista$Genero)
round(gen/length(Entrevista$Genero)*100,1)
pie(round(gen/length(Entrevista$Genero)*100,1))

# ¿Qué equipo entrevistador tuvo más encuestas?
ent <- table(Entrevista$Entrev)
prop.table(ent)*100
pie(prop.table(ent)*100)

# ¿Cuál es el porcentaje de alumnos entrevistados por carrera?
car <- table(Entrevista$Carrera)
prop.table(car)*100
pie(prop.table(car)*100)

# ¿Cuántos alumnos participaron por semetre?
sem <- table(Entrevista$Semestre)
prop.table(sem)*100
pie(prop.table(sem)*100)

# ¿Cuál es el rango de edad de los participantes?
range(Entrevista$Edad)

# ¿Cómo te enteraste de la facultad?
conFCF <- table(Entrevista$oi_1)
conFCF
prop.table(conFCF)*100
pie(prop.table(conFCF)*100)

# ¿Fue tu promera opción la FCF?
op <- table(Entrevista$oi_2)
op
prop.table(op)*100
pie(prop.table(op)*100)

# ¿Presentantes en otra facultad?
of <- table(Entrevista$oi_2a)
of
prop.table(of)*100
pie(prop.table(of)*100)

