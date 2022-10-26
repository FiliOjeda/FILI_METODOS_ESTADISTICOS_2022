# Examen
# 26/10/2022
# Filiberto Lozoya Ojeda

data("InsectSprays")
head(InsectSprays)

boxplot(InsectSprays$count ~ InsectSprays$spray,
        xlab = "Tipo de insecticida",
        ylab = "Conteo",
        col = "purple")

tapply(InsectSprays$count, InsectSprays$spray, mean)

tapply(InsectSprays$count, InsectSprays$spray, var)

Insecticidas <-  aov(InsectSprays$count ~ InsectSprays$spray)

TukeyHSD(Insecticidas)
plot(TukeyHSD(Insecticidas))
