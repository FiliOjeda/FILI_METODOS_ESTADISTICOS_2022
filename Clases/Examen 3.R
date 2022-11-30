# EXAMEN 3
# Filiberto Lozoya Ojeda
# 30 - 11 - 2022


# PRIMER PROBLEMA ---------------------------------------------------------



# BOXPLOT -----------------------------------------------------------------


Suelos <- read.csv("Tipos de suelos.csv")

boxplot(Suelos$Nematodos ~ Suelos$Suelo,
        xlab = "Tipo de suelos",
        ylab = "Numero de Nematodos",
        col= "blue")



# FUNCION TAPPLY ----------------------------------------------------------


# Aplique la función tapply y encuentre las varianzas de los cinco tratamientos.

tapply(Suelos$Nematodos, Suelos$Suelo, var)


# ¿Cuántas veces es la diferencia entre la varainza más pequeña y la más grande?


# La varianza mas grande es la del suelo j=1 que es de 571.7, mientras 
# que la varianza mas pequeña es la del suelo j=5 que es de 90.8

# la diferencia en veces de la varianza mas pequeña y la mas grande es de 
# 6.296256 y la diferencia entre estos es de 480.9

571.7-90.8

571.7/90.8


# FUNCION ANOVA -----------------------------------------------------------

library(dplyr)

tapply(Suelos$Nematodos, Suelos$Suelo, mean)
bartlett.test(Suelos$Nematodos, Suelos$Suelo)

summary(Suelos)

# HIPOTESIS NULA Y ALTERNATIVA

# H0 <- Las muestras de suelo no son homogeneas
# H1 <- Las muestras de suelo si son homogeneas

shapiro.test(Suelos$Nematodos)
hist(Suelos$Nematodos,
     xlab = "Numero de Nematodos",
     ylab = "Frecuencia",
     col = "Blue")



# Filtrar -----------------------------------------------------------------

# lo que hicimos es flitrar los valores para si poderlos tener de manera 
# independiente cada uno

J1 <- Suelos %>% 
  filter(Suelo == "j = 1")

J2 <- Suelos %>% 
  filter(Suelo == "j = 2")

J3 <- Suelos %>% 
  filter(Suelo == "j = 3")

J4 <- Suelos %>% 
  filter(Suelo == "j = 4")

J5 <- Suelos %>% 
  filter(Suelo == "j = 5")


# Shapiro test ------------------------------------------------------------

#Hacemos la prueba de shapiro test para poder obtener mas datos acerca de los
# valores que hemos filtrado

shapiro.test(J1$Nematodos)

shapiro.test(J2$Nematodos)

shapiro.test(J3$Nematodos)

shapiro.test(J4$Nematodos)

shapiro.test(J5$Nematodos)


aov(Suelos$Nematodos ~ Suelos$Suelo)

nom.aov <- aov(Suelos$Nematodos ~ Suelos$Suelo)
summary(nom.aov)
# Grados de libertad = 4

# Drados de libertad residuales = 20

# F value = 9.287

# p-value = 0.5444

# existen diferencias por lo que vaoms a realizarbla prueba de Tukey

TukeyHSD(nom.aov)

plot(TukeyHSD(nom.aov))


# SEGUNDO PROBLEMA --------------------------------------------------------


# BOXPLOT -----------------------------------------------------------------

Riego <- read.csv("Crecimientos.csv")

boxplot(Riego$Crecimiento ~ Riego$Riego,
        xlab = "Tipo de Riego",
        ylab = "Crecimiento (cm)",
        col= "Blue")


# FUNCION TAPPLY ----------------------------------------------------------

# Aplique la función tapply y encuentre las varianzas del crecimiento.

tapply(Riego$Crecimiento, Riego$Riego, var)

# ¿Cuántas veces es la diferencia entre la varainza más pequeña y la más grande?


# La varianza mas grande es la de riego alto con 33.6, mientras 
# que la varianza mas pequeña es la de riego medio con 4.0

# la diferencia en veces de la varianza mas pequeña y la mas grande es de 
# 8.4 y la diferencia entre estos es de 29.6

33.6/4

33.6-4


# FUNCION ANOVA -----------------------------------------------------------

library(dplyr)

tapply(Riego$Crecimiento, Riego$Riego, mean)
bartlett.test(Riego$Crecimiento, Riego$Riego)

summary(Suelos)

# HIPOTESIS NULA Y ALTERNATIVA

# H0 <- No hay varianza en el crecimiento 
# H1 <- Si hay varianza en el crecimiento

shapiro.test(Riego$Crecimiento)
hist(Riego$Crecimiento,
     xlab = "Crecimiento",
     ylab = "Frecuencia",
     col = "Blue")


aov(Riego$Crecimiento ~ Riego$Riego)

num.aov <- aov(Riego$Crecimiento ~ Riego$Riego)

summary(num.aov)
# Grados de libertad = 2

# Drados de libertad residuales = 15

# F value = 84.48

# p-value = 0.061

# existen diferencias por lo que vamos a realizar la prueba de Tukey

TukeyHSD(num.aov)

plot(TukeyHSD(num.aov))

