# Analisis de varianza
# ANOVA
# 05/10/2022

library(repmis)

paraje <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")



tapply(paraje$DAP, paraje$Paraje, mean)
tapply(paraje$DAP, paraje$Paraje, median)
tapply(paraje$DAP, paraje$Paraje, sd)
tapply(paraje$DAP, paraje$Paraje, var)
tapply(paraje$DAP, paraje$Paraje, length)

boxplot(paraje$DAP ~ paraje$Paraje)
