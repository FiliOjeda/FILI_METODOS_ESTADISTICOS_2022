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

oi_4 <- table(Entrevistas$oi_4)
prop.table(oi_4)*100

-----------------------------------------
  

Entrevistas$oi_4a <- as.factor(Entrevistas$oi_4a)

oi_4a <- table(Entrevistas$oi_4a)

oi_4a


prop.table(oi_4a)*100


#CONVIVENCIA

ef_1 <- table(Entrevistas$ef_1)
ef_1
prop.table(ef_1)*100


ins_1 <- table(Entrevistas$ins_1)
ins_1
prop.table(ins_1)*100


ap_1 <- table(Entrevistas$ap_1)
ap_1
prop.table(ap_1)*100


ap_2 <- table(Entrevistas$ap_2)
ap_2
prop.table(ap_2)*100



ap_3 <- table(Entrevistas$ap_3)
ap_3
prop.table(ap_3)*100


#Guardar la BD con los datos nuevos en formato csv

write.csv(Entrevistas, "Encuesta_codificada.csv")




#Paleta de colores



















