# 12/10/2022
# Filiberto Lozoya Ojeda   
# Examen 1


# Añadir la tabla ---------------------------------------------------------


Suelos1 <- read.csv("Tipos de suelo.csv")

# Añadir el boxplot -------------------------------------------------------

boxplot(Suelos1$nematodos ~ Suelos1$suelo,
        xlab = "Tipo de suelos",
        ylab = "Numero de nematodos",
        col= "green")


# Preguntas ---------------------------------------------------------------

# Pregunta 1

tapply(Suelos1$nematodos, Suelos1$suelo, var)

# la varianza de el s5 es de 90.8 siendo la menor o mas baja de todas, 
# mientras el s1 es de 571.7 siendo el mayor o mas grande

# ¿Cuantas veces es la diferencia entre la varianza mas pequeña y la mas grande?
# R= la diferencia en veces de la varianza mas pequeña y la mas grande es de 
# 6.296256
571.7/90.8

# Pregunta 2

# Realiza un test F (ANOVA) para comparar las medias de las 5 muestras 
# ¿Cuáles serían las hipótesisnula y alternativa?

# R = hipotesis ---------------------------------------------------------------

# H0 <- hipotesis nula = No existe una varianza entre las 5 muestras

# H1 <- hipotesis alternativa = Si exsiste una varianza entre las 5 muestras

library(dplyr)
ANOVA <- aov(Suelos1$nematodos ~ Suelos1$suelo) 
summary(ANOVA)

# Describe los resultados obtenidos indicando cuál es el valor del 
# estadístico de contraste (F), los gradosde libertad del factor, 
# los grados de libertad residuales y el valor de P.

# Valor estadistico de contraste (F) = 0.000207
# Grados de libertad del factor = 4
# Grados de libertad de residuales= 20
# Valor de P= 9.287


# Prueba de Tukey ---------------------------------------------------------

TukeyHSD(ANOVA)

# diff         lwr        upr     p adj
# s2-s1  -8.0 -40.1208794  24.120879 0.9429980
# s3-s1 -18.4 -50.5208794  13.720879 0.4481002
# s4-s1 -48.4 -80.5208794 -16.279121 0.0017871
# s5-s1  12.8 -19.3208794  44.920879 0.7555248
# s3-s2 -10.4 -42.5208794  21.720879 0.8658492
# s4-s2 -40.4 -72.5208794  -8.279121 0.0095500
# s5-s2  20.8 -11.3208794  52.920879 0.3307073
# s4-s3 -30.0 -62.1208794   2.120879 0.0743745
# s5-s3  31.2  -0.9208794  63.320879 0.0595156
# s5-s4  61.2  29.0791206  93.320879 0.0001237


# Al realizar la prueba de tukey pude deducir que en todas las variables hay
# diferencias excepto en 2 que serian 
# s4 - s1 y s4 - s2

plot(TukeyHSD(ANOVA))

# Para este examen se me hizo algo complicado en lo personal pero despues de un
# tiempo pude ir realizando el examen conforme fui recordando los comandos que
# necesite para el examen y pues intente resolver todo lo que pude en el examne